FROM python:3.6-alpine

LABEL maintainer="peaceiris"

# Install requirements
COPY ./requirements.txt /root
WORKDIR /root
RUN apk add --no-cache \
    gcc && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install -r ./requirements.txt

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
