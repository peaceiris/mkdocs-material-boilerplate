# Start with Docker



## Public docker image

- [peaceiris/mkdocs-material - Docker Hub]

<!-- https://dockeri.co/ -->
[![DockerHub Badge](https://dockeri.co/image/peaceiris/mkdocs-material)][peaceiris/mkdocs-material - Docker Hub]



## docker-compose

Here is an example `docker-compose.yml`
Please check the latest tag before you go.

```yaml
version: '3'

services:
  mkdocs:
    image: peaceiris/mkdocs-material:v3.1.6
    container_name: mkdocs_material_boilerplate
    ports:
      - 8000:8000
    volumes:
      - ${PWD}:/root
    stdin_open: true
    tty: true
    command:
      - "serve"
      - "--dev-addr=0.0.0.0:8000"
      - "--config-file"
      - "./mkdocs-sample.yml"
```

```sh
docker-compose up
```

Go to [http://localhost:8000/](http://localhost:8000/)



<!-- Internal References -->
<!-- External References -->
[peaceiris/mkdocs-material - Docker Hub]: https://hub.docker.com/r/peaceiris/mkdocs-material
