# MkDocs Material Boilerplate (Starter Kit)


## Use public docker image

- [peaceiris/mkdocs-material - Docker Hub](https://cloud.docker.com/repository/docker/peaceiris/mkdocs-material)

```
# Serve
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs peaceiris/mkdocs-material
# Build
docker run --rm -v ${PWD}:/docs peaceiris/mkdocs-material build
```

Go to [localhost:8000](localhost:8000)
