from invoke import task
import webbrowser
import urllib.request
import concurrent.futures


def open_browser(addr):
    """
    Open browser
    """
    url = "http://" + addr
    while True:
        try:
            with urllib.request.urlopen(url) as res:
                if res:
                    break
        except urllib.error.HTTPError as err:
            pass
        except urllib.error.URLError as err:
            pass
    webbrowser.open(url, new=2, autoraise=True)


@task(help={
    "addr": "IP address and port to serve documentation locally (default: localhost:8000)"
})
def serve(c, addr="localhost:8000"):
    """
    Serve site and open browser
    """
    executor = concurrent.futures.ThreadPoolExecutor(max_workers=2)
    executor.submit(open_browser, addr)
    executor.submit(c.run(f"mkdocs serve --dev-addr={addr}"))


@task
def build(c):
    """
    Build site
    """
    c.run("mkdocs build")


@task
def deploy(c):
    """
    Deploy to GitHub Pages
    """
    c.run("mkdocs gh-deploy")
