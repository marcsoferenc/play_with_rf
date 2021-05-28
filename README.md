# Playing with Robot Framework

## What Is This?

This is a simple practice to play with [Robot Framework](https://robotframework.org).

## How To Set Up This?

### Prerequisites

* [Python3](https://www.python.org/) - Build tools C/C++ should be installed!
* [Docker](https://www.docker.com/)

### Create and Activate Python Environment

```commandline
python3 -m venv venv && source ./venv/bin/activate
```

### Upgrade Package Management Tools

```commandline
python -m pip install -U pip wheel setuptools
```

### Install Development Requirements

```commandline
pip install -r requirements/dev.txt
```

### Start Selenium Grid

For browser webdrivers the dockerized selenium grid is used.

Download and start relevant docker images.

```commandline
docker-compose up -d
```

To stop/teardown docker images.

```commandline
docker-compose down
```

## How To Start Testing

```commandline
python main.py
```
