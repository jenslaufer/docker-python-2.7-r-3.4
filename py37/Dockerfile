FROM python:3.7-slim-buster

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y gnupg apt-transport-https software-properties-common

RUN apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/debian buster-cran35/'

RUN apt-get update && apt-get install -y cmake zlib1g-dev git libsm6 libxext6 libxrender-dev libglib2.0-0 libxml2 libxml2-dev libssl-dev libcurl4-openssl-dev r-base
RUN pip install --upgrade pip && pip install rpy2

RUN R -e "install.packages(c('tidyverse', 'devtools'), repos = 'http://cran.us.r-project.org')"