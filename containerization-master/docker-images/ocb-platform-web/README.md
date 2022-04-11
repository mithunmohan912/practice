### Build `platform-web` Docker image and push it to private registry

- Build a platform-web docker image

#### Prerequisites
> - `platform-web.war` is built  from the source code and updated with the desired build

```
$ docker build -t ocb.docker.repositories.sap.ondemand.com/ocb-platform-web:v83sp05 .
```

- Verify images are built properly

```
$ docker images
REPOSITORY                                                  TAG                 IMAGE ID            CREATED             SIZE
ocb.docker.repositories.sap.ondemand.com/ocb-platform-web   v83sp05             8280a3218bfd        About an hour ago   684 MB
```

- Push image to remote private docker registry
```
$ docker push ocb.docker.repositories.sap.ondemand.com/ocb-platform-web:v83sp05
```

You can verify the image on Dokcer registry by signing in below repository with user `ocb_developer` 
https://docker.repositories.sap.ondemand.com/webapp/#/login

