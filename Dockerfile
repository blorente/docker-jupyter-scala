FROM jupyter/r-notebook

LABEL maintainer="Filip Krikava <krikava@gmail.com>"

USER root

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && apt-get install -qy openjdk-8-jdk-headless

USER $NB_UID

RUN cd / && curl https://gist.githubusercontent.com/blorente/0fda0e7cd5aa9aa4a5764794501ef5b5/raw/798937291775aa87cf90c197c6499910d45269f0/my-jupyter-scala.sh | bash -x
RUN jupyter kernelspec list
