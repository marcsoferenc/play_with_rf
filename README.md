# Playing with Robot Framework

## What Is This?

This is a simple practice to play with [Robot Framework](https://robotframework.org).

## How To Set Up This (General)?

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

## How To Set Up This (Ubuntu)?

You are lucky, there is an out of the box shell script, which is waiting for you.

```commandline
source setup.sh
```


## How To Start Testing

```commandline
python main.py
```

## Folder Structure

Move Robot Framework Forward To Screenplay Pattern

It is not a perfect solution, but most of the times the Page Objects
are hurting some principles like **Single Responsibility Principle**
So with Actions and Observations free the Page Object a little.

```
*
|
*-- src/
        *
        |
        *-- Data/  -- Config Variables, SUT Data etc.
        |
        *-- Libraries/  -- Own Libraries for Robot Framework
        |
        *-- Resources/
        |             *
        |             |
        |             *-- Actions/  -- Actions which are performed by the end user
        |             |
        |             *-- Observations/  -- Checkings
        |             |
        |             *-- PageObjects/  -- Only Defines How to Access WebElements
        |             |
        *-- Tests/ -- Test Suites structure
```
