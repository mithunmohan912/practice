


### How to push Docker Image to Private Docker Registry

- Login to priave repository before you push the docker image. Get the credentials of ocb_developer

```
$ docker login ocb.docker.repositories.sap.ondemand.com
Username (ocb_developer): ocb_developer
Password:
Login Succeeded

```

- Now tag a docker image to push it to remote repository. e.g you want to push nginx:latest to ocb private repoistory.
    - You need to tag a image as ocb.docker.repositories.sap.ondemand.com/<image-name>:<tag>
    - Now you can pull ngninx image and push it as ocb-nginx:latest to remote repository
    
```
$ docker pull nginx
Using default tag: latest
latest: Pulling from library/nginx
be8881be8156: Already exists
32d9726baeef: Pull complete
87e5e6f71297: Pull complete
Digest: sha256:d85914d547a6c92faa39ce7058bd7529baacab7e0cd4255442b04577c4d1f424
Status: Downloaded newer image for nginx:latest

$ docker tag nginx:latest ocb.docker.repositories.sap.ondemand.com/ocb-nginx:latest

$ docker push ocb.docker.repositories.sap.ondemand.com/ocb-nginx:latest
The push refers to a repository [ocb.docker.repositories.sap.ondemand.com/ocb-nginx]
08d25fa0442e: Pushed
a8c4aeeaa045: Pushed
cdb3f9544e4c: Mounted from ocb-db
latest: digest: sha256:2de9d5fc6585b3f330ff5f2c323d2a4006a49a476729bbc0910b695771526e3f size: 948

```

- Check if image is pushed successfully by logging in with `ocb_developer` to https://docker.repositories.sap.ondemand.com/webapp/#/login . Browse to `Artifacts > ocb`

