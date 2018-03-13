FROM python:2-slim

ADD requirements.txt requirements.txt
ADD requirements.r requirements.r

RUN echo "deb http://cran.rstudio.com/bin/linux/debian jessie-cran34/" >> /etc/apt/sources.list.d/r-cran-3.4.list

RUN apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y r-base r-base-dev 

RUN pip install -r requirements.txt
RUN Rscript requirements.r