FROM peaceiris/mkdocs-material:latest

LABEL "com.github.actions.name"="Material for MkDocs build and deploy to GitHub Pages"
LABEL "com.github.actions.description"="Build documentation with Material for MkDocs and push to GitHub Pages."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/peaceiris/mkdocs-material-boilerplate"
LABEL "homepage"="https://github.com/peaceiris/mkdocs-material-boilerplate"
LABEL "maintainer"="peaceiris"

RUN apk add --no-cache \
    git \
    openssh-client

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
