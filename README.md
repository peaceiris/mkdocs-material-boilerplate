# MkDocs Material Boilerplate (Starter Kit)

![material.png](https://raw.githubusercontent.com/peaceiris/mkdocs-material-boilerplate/master/material.png)


## Use public docker image

- [peaceiris/mkdocs-material - Docker Hub](https://hub.docker.com/r/peaceiris/mkdocs-material)

```
# Serve
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs peaceiris/mkdocs-material
# Build
docker run --rm -v ${PWD}:/docs peaceiris/mkdocs-material build
```

Go to [localhost:8000](http://localhost:8000)
