# Steps to install Docker & Kubeadm on RHEL 7.5

## Install Docker
- Install Docker on RHEL using instructions on below link
    - https://docs.docker.com/cs-engine/1.13/#install-on-centos-7172--rhel-70717273-yum-based-systems

### Installing kubeadm, kubelet and kubectl

- You will install these packages on all of your machines:
    - `kubeadm`: the command to bootstrap the cluster.
    - `kubelet`: the component that runs on all of the machines in your cluster and does things like starting pods and containers.
    - `kubectl`: the command line util to talk to your cluster.

    ```
    I313873@pnql56591052a ~/k8s-lab $ sudo vim /etc/yum.repos.d/kubernetes.repo
    [kubernetes]
    name=Kubernetes
    baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
    enabled=1
    gpgcheck=1
    repo_gpgcheck=1
    gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
    ```

    ```
    I313873@pnql56591052a ~/k8s-lab $ sudo setenforce 0
    setenforce: SELinux is disabled
    ```

    ```
    I313873@pnql56591052a ~/k8s-lab $ sudo yum install -y kubelet kubeadm kubectl
    ```


- Disabling SELinux by running setenforce 0 is required to allow containers to access the host filesystem, which is required by pod networks for example. You have to do this until SELinux support is improved in the kubelet.

- Some users on RHEL/CentOS 7 have reported issues with traffic being routed incorrectly due to iptables being bypassed. You should ensure `net.bridge.bridge-nf-call-iptables` is set to `1` in your `sysctl` config, e.g.
```
cat <<EOF >  /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sysctl --system
```

You need to disable the swap before you start the Kubelet service
```
root@pnql56591052a ~ $ swapoff -a
```

#### Proxy Setup

Login to root user from where you would be installing Kubeadm

- Add Environment Variables `/etc/systemd/system/docker.service.d/http-proxy.conf`

```
[root@pnql56591052a ~]# cat /etc/systemd/system/docker.service.d/http-proxy.conf

Environment=”HTTP_PROXY=http://proxy:8080”
Environment=”NO_PROXY=localhost,127.0.0.0/8, 10.68.148.36, sap.corp, 10.96.0.10”
```

- Export below code to  `~/.bashrc` or `~/.bash_profile` for the `root` user

```
export http_proxy=http://proxy:8080/
export HTTP_PROXY=$http_proxy
export https_proxy=$http_proxy
export HTTPS_PROXY=$http_proxy

printf -v lan '%s,' 10.136.67.98
printf -v pool '%s,' 192.168.0.{1..253}
printf -v service '%s,' 10.96.0.{1..253}

export no_proxy="${lan%,},${service%,},${pool%,},127.0.0.1, sap.corp";
export NO_PROXY=$no_proxy
```

Enable and Start `kubelet` service

    ```
    I313873@pnql56591052a ~/k8s-lab $ sudo systemctl enable kubelet && systemctl start kubelet

    ```


### Configure cgroup driver used by kubelet on Master Node
When using Docker, kubeadm will automatically detect the cgroup driver for the kubelet and set it in the `/var/lib/kubelet/kubeadm-flags.env` file during runtime.

- Find cgroup driver using below command
```
[root@pnql56591052a ~]# docker info |grep cgroup
```
- Create file if not present
```
[root@pnql56591052a ~]# vim /etc/default/kubelet
KUBELET_KUBEADM_EXTRA_ARGS=--cgroup-driver=cgroupfs
```
This file will be used by kubeadm init and kubeadm join to source extra user defined arguments for the kubelet.

Please mind, that you only have to do that if the cgroup driver of your CRI is not cgroupfs, because that is the default value in the kubelet already.

- Then restart the kubelet
```
root@pnql56591052a ~ $ systemctl daemon-reload
root@pnql56591052a ~ $ systemctl restart kubelet
```

## Initializing Kubeadm master with calico Network

The master is the machine where the control plane components run, including etcd (the cluster database) and the API server (which the kubectl CLI communicates with).

To initialize the master, pick one of the machines you previously installed kubeadm on, and run:

```
root@pnql56591052a ~ $ kubeadm init --apiserver-advertise-address=10.136.67.98 --pod-network-cidr=192.168.0.0/16

```

- Make master node available for scheduling
```
[root@pnql56591052a ~]# kubectl taint nodes --all node-role.kubernetes.io/master-
node/pnql56591052a untainted
```

- Create calico network
```
[root@pnql56591052a ~]# kubectl apply -f https://docs.projectcalico.org/v3.1/getting-started/kubernetes/installation/hosted/rbac-kdd.yaml

[root@pnql56591052a ~]# kubectl apply -f https://docs.projectcalico.org/v3.1/getting-started/kubernetes/installation/hosted/kubernetes-datastore/calico-networking/1.7/calico.yaml

```

- Verify if Kubeadm is ready

```
I313873@pnql56591052a ~ $ kubectl get node
NAME            STATUS    ROLES     AGE       VERSION
pnql56591052a   Ready     master    6d        v1.11.1

I313873@pnql56591052a ~ $ kubectl get pods --all-namespaces -o wide
NAMESPACE     NAME                                    READY     STATUS    RESTARTS   AGE       IP             NODE
kube-system   calico-node-746dm                       2/2       Running   1          6d        10.136.67.98   pnql56591052a
kube-system   coredns-78fcdf6894-6qvpd                1/1       Running   0          6d        192.168.0.22   pnql56591052a
kube-system   coredns-78fcdf6894-8tffz                1/1       Running   0          6d        192.168.0.23   pnql56591052a
kube-system   etcd-pnql56591052a                      1/1       Running   0          6d        10.136.67.98   pnql56591052a
kube-system   kube-apiserver-pnql56591052a            1/1       Running   9          6d        10.136.67.98   pnql56591052a
kube-system   kube-controller-manager-pnql56591052a   1/1       Running   1          6d        10.136.67.98   pnql56591052a
kube-system   kube-proxy-rbsl7                        1/1       Running   0          6d        10.136.67.98   pnql56591052a
kube-system   kube-scheduler-pnql56591052a            1/1       Running   1          6d        10.136.67.98   pnql56591052a

I313873@pnql56591052a ~ $ kubectl get svc --all-namespaces -o wide
NAMESPACE     NAME           TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)         AGE       SELECTOR
default       kubernetes     ClusterIP   10.96.0.1      <none>        443/TCP         6d        <none>
kube-system   calico-typha   ClusterIP   10.109.8.182   <none>        5473/TCP        6d        k8s-app=calico-typha
kube-system   kube-dns       ClusterIP   10.96.0.10     <none>        53/UDP,53/TCP   6d        k8s-app=kube-dns

```

- How to enable access to Kubeclt from regular user

```
To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

```

- If Node is `NotReady`, you can go and check to see what's the cause. Most likely Docker network is not initialized.

