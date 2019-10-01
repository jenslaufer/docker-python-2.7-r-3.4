FROM python:3.7-slim

RUN echo "deb http://cran.rstudio.com/bin/linux/debian stretch-cran35/" >> /etc/apt/sources.list.d/r-cran-3.5.list
RUN apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

RUN apt-get update && apt-get install -y gcc gnupg cmake libopenmpi-dev zlib1g-dev git libsm6 libxext6 libxrender-dev libglib2.0-0 libxml2 libxml2-dev libssl-dev libcurl4-openssl-dev r-base

RUN pip install --upgrade pip && pip install rpy2 
RUN R -e "install.packages(c('tidyverse', 'reticulate', 'devtools'), repos = 'http://cran.us.r-project.org')"