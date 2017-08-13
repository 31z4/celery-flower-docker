# Dockerized Celery Flower

Flower is a web based tool for monitoring and administrating [Celery](celeryproject.org) clusters.

## Development

[`pip-tools`](https://github.com/nvie/pip-tools) is be used to do [proper dependency pinning](http://nvie.com/posts/better-package-management/). Do not modify `*/requirements.txt` directly. Edit `*/requirements.in` instead and then run

```sh
make clean
make
```
