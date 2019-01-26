FROM squidfunk/mkdocs-material

MAINTAINER peaceiris

# Install requirements
RUN pip install --upgrade pip && pip install \
    python-markdown-math \
    pygments \
    prompt-toolkit

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
