# ElasticSearch Image

[![Docker Image CI](https://github.com/chinayin-docker/elasticsearch/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/chinayin-docker/elasticsearch/actions/workflows/ci.yml)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/chinayin/elasticsearch?sort=semver)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/chinayin/elasticsearch?sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/chinayin/elasticsearch)

Elasticsearch is a distributed, RESTful search and analytics engine capable of solving a growing number of use cases. As
the heart of the Elastic Stack, it centrally stores your data so you can discover the expected and uncover the
unexpected.

### Supported tags and respective `Dockerfile` links

![](https://img.shields.io/docker/v/chinayin/elasticsearch/7)

### Image Variants

- `elasticsearch:<version>`

### Usage

You can use the image directly, e.g.

```
docker run --rm -it chinayin/elasticsearch:8
```

The images are built daily and have the security release enabled, so will contain any security updates released more
than 24 hours ago.

You can also use the images as a base for your own Dockerfile:

```
FROM chinayin/elasticsearch:8
```
