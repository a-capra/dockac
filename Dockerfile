FROM fedora:35

WORKDIR /usr/src/app

LABEL maintainer.name="AC"
LABEL maintainer.email="andrea.capra85@gmail.com"

COPY packages ./

RUN dnf update -y \
 && dnf install -y $(cat packages) \
 && rm /packages

COPY requirements.txt ./
RUN python3 -m pip install --no-cache-dir -r requirements.txt\
 && rm /requirements.txt
