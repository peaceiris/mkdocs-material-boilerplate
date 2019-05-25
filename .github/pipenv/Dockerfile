FROM python:3.6-alpine3.9

RUN pip install pipenv
ENV PIPENV_VENV_IN_PROJECT=true

ENTRYPOINT [ "/usr/local/bin/pipenv" ]
