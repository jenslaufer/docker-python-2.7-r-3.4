FROM python:3.7-slim

ADD requirements.txt requirements.txt
ADD requirements.r requirements.r

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y gnupg

RUN echo "deb http://cran.rstudio.com/bin/linux/debian stretch-cran35/" >> /etc/apt/sources.list.d/r-cran-3.5.list

RUN apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y r-base r-base-dev 

RUN apt-get install -y gcc
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y libssl-dev libsasl2-dev

RUN pip install -r requirements.txt
RUN Rscript requirements.r