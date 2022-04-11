### Build `ocb-ui` Docker image and push it to private registry


#### Prerequisites
> - OCB UI source is built as a `onlineweb.war` and copied to current directory


- Build `ocb-ui` docker image

```
$ docker build -t ocb.docker.repositories.sap.ondemand.com/ocb-ui:v83sp05 .
```

- Verify images are built properly

```
$ docker images

REPOSITORY                                                  TAG                 IMAGE ID            CREATED             SIZE
ocb.docker.repositories.sap.ondemand.com/ocb-ui             v83sp05             0bb46c3f9636        17 hours ago        301 MB
```

- Push image to remote private docker registry
```
$ docker push ocb.docker.repositories.sap.ondemand.com/ocb-ui:v83sp05
```

