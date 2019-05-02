# Start with Docker



## Public docker image

- [peaceiris/mkdocs-material - Docker Hub]

<!-- https://dockeri.co/ -->
[![DockerHub Badge](https://dockeri.co/image/peaceiris/mkdocs-material)][peaceiris/mkdocs-material - Docker Hub]



## Run docker with shell script

```sh
./task.sh -p  # docker pull peaceiris/mkdocs-material

./task.sh -s  # mkdocs serve
./task.sh -b  # mkdocs build
./task.sh -d  # mkdocs gh-deploy
./task.sh -V  # mkdocs --version
./task.sh -h  # mkdocs --help

docker build -t peaceiris/mkdocs-material .
```

Serving on [localhost:8000](http://localhost:8000)

Task are defined by [task.sh]



<!-- Internal References -->
<!-- External References -->
[peaceiris/mkdocs-material - Docker Hub]: https://hub.docker.com/r/peaceiris/mkdocs-material
[task.sh]: https://github.com/peaceiris/mkdocs-material-boilerplate/blob/master/task.sh
