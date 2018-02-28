FROM debian:9.3
MAINTAINER Joshua Slik <joshcodedev@gmail.com>

RUN useradd owapi
COPY . /home/owapi/owapi

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y libxslt-dev build-essential zlib1g-dev pkg-config
RUN apt-get install -y python3-dev python3-pip git redis-server

RUN pip3 install pipenv
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
RUN cd /home/owapi/owapi; pipenv install

EXPOSE 4444

ENTRYPOINT cd /home/owapi/owapi; redis-server --daemonize yes; PYTHONPATH=. pipenv run asphalt run config.yml
