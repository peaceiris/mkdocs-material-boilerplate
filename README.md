# MkDocs Material Boilerplate (Starter Kit)

```
docker build -t peaceiris/mkdocs-material .
# Serve
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs peaceiris/mkdocs-material
# Build
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs peaceiris/mkdocs-material build
```

`localhost:8000`
