### Build `ocb-db` Docker image and push it to private registry

This is OCB Postgres database image built on top of Postgres 9.6 database. This copies to database script to init directory of postgres which executes the scripts on container startup


- Build a Docker Image

You can build `ocb-db` docker image from GitHub repository
```
$ docker build -t ocb.docker.repositories.sap.ondemand.com/ocb-postgres-db:v83sp05 .
```

- Verify images are built

```
$ docker images
REPOSITORY                                                  TAG                 IMAGE ID            CREATED              SIZE
ocb.docker.repositories.sap.ondemand.com/ocb-postgres-db    v83sp05             18a022ebcf14        About a minute ago   282 MB
```

- Push an image to private registry

```
$ docker push ocb.docker.repositories.sap.ondemand.com/ocb-postgres-db:v83sp05
```
