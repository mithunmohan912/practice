OCB can be deployed on Kubernetes Clusters. Below are steps to install OCB to Kubernetes Clusters using [SAP Gardener](https://github.wdf.sap.corp/pages/kubernetes/gardener/) which is upcoming Kubernetes as a Service offering.

### Prerequisites
* You need to have [Gardener account](https://dashboard.garden.canary.k8s.ondemand.com/) and AWS credentials to setup you cloud account.
* Or optionally, you can have your own hardware with Kubernetes installed. (Kubeadm)
* If you want to setup Kubernetes clusters, you can follow [Wiki : Kubernetes - Kubeadm installation steps on RHEL7](Installing-Kubernetes-on-RHEL-7.md)

### Install Kubectl on your machine
Refer the [Kubectl Installation instructions](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

### Configure Kubectl to access Gardener Kubernetes Cluster
* Copy KubeConfig of your cluster from Gardener Dashboard and save it in file. e.g. OCB_KUBECONFIG_CANARY
* Export KUBECONFIG variable with path to kubeconfig file
* You can add below code in your `~/.bashrc` file
```
KUBECONFIG=/home/i313873/OCB_KUBECONFIG_CANARY
export KUBECONFIG
```
Test if configuration is working and you are able to connect to cluster by getting nodes

```
$ kubectl get node
NAME                                             STATUS    ROLES     AGE       VERSION
ip-10-250-11-173.eu-central-1.compute.internal   Ready     node      14d       v1.11.1
ip-10-250-23-109.eu-central-1.compute.internal   Ready     node      7d        v1.11.1
ip-10-250-4-150.eu-central-1.compute.internal    Ready     node      6d        v1.11.1
```


#### OCB Deployment on K8S Cluster
> OCB can be deployed in 3 tier
> * Web Servers
> * Application Servers
> * Database Servers

### Steps to deploy OCB in Kubernetes

Apply configurations from k8s-config in one command

```
$ kubectl apply -f k8s-config
secret "ocb-docker-artifactory" created
ingress.extensions "ocb-ingress" created
statefulset.apps "ocb-platform" created
clusterrolebinding.rbac.authorization.k8s.io "default-cluster" configured
service "ocb-platform-service" created
job.batch "ocb-postgres-cleaner" created
persistentvolumeclaim "ocb-postgres-db-pv" created
persistentvolumeclaim "ocb-postgres-log-pv" created
deployment.apps "ocb-postgres-deployment" created
service "ocb-db-service" created
statefulset.apps "ocb-ui" created
service "ocb-ui-service" created

```

#### Monitor and check status of the pods 

```
$ kubectl get pod -o wide -w
NAME                                       READY     STATUS      RESTARTS   AGE       IP            NODE
ocb-platform-0                             0/1       Running     0          3m        100.96.6.36   ip-10-250-11-173.eu-central-1.compute.internal
ocb-postgres-cleaner-df278                 0/1       Completed   0          3m        100.96.2.18   ip-10-250-4-150.eu-central-1.compute.internal
ocb-postgres-deployment-55d64b8b78-tjq4b   1/1       Running     1          3m        100.96.2.17   ip-10-250-4-150.eu-central-1.compute.internal
ocb-ui-0                                   1/1       Running     0          3m        100.96.1.41   ip-10-250-23-109.eu-central-1.compute.internal
ocb-ui-1                                   1/1       Running     0          3m        100.96.6.37   ip-10-250-11-173.eu-central-1.compute.internal

$ kubectl get svc
NAME                   TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)             AGE
kubernetes             ClusterIP   100.64.0.1       <none>        443/TCP             19d
ocb-db-service         ClusterIP   100.68.246.7     <none>        5432/TCP            3m
ocb-platform-service   ClusterIP   100.64.126.158   <none>        8080/TCP,5701/TCP   3m
ocb-ui-service         ClusterIP   100.70.219.216   <none>        80/TCP              3m

$ kubectl get ingress -o wide
NAME          HOSTS     ADDRESS                                                                     PORTS     AGE
ocb-ingress   *         a5b6afba88b1d11e8a311e255c46731d-715882604.eu-central-1.elb.amazonaws.com   80        4m

```

### Testing OCB

- Test if platform is working fine by hitting the URL. You need to take the address from ingress shown above

https://a5b6afba88b1d11e8a311e255c46731d-715882604.eu-central-1.elb.amazonaws.com/platform-web/odata/ns/authenticationservice/$metadata

- Go to the OCB UI URL

https://a5b6afba88b1d11e8a311e255c46731d-715882604.eu-central-1.elb.amazonaws.com/ocbweb/

- Change the Connection Settings as follows:

    - **Protocol** : https
    - **Server** : a5b6afba88b1d11e8a311e255c46731d-715882604.eu-central-1.elb.amazonaws.com
    - **Context** : /platform-web/odata
    - **App** : Consumers
    - **Channel** : Mobile
    - **Port** : 443

- Now login with tbowman/Pass1234



### Uninstalling OCB

```
$ kubectl delete ingress ocb-ingress && \
kubectl delete service ocb-ui-service ocb-platform-service ocb-db-service && \
kubectl delete sts ocb-platform ocb-ui ocb-db && \
kubectl delete pvc ocb-postgres-db-pv ocb-postgres-log-pv && \
kubectl delete job ocb-postgres-cleaner && \
kubectl delete secret ocb-docker-artifactory && \
kubectl delete clusterrolebinding default-cluster && \
kubectl delete configmap keyfile-config

```
