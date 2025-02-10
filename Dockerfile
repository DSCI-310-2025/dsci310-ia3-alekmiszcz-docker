FROM rocker/rstudio:4.4.2

User root

User rstudio

WORKDIR /home/rstudio/dsci310-ia3-alekmiszcz-docker
COPY . /home/rstudio/dsci310-ia3-alekmiszcz-docker

RUN Rscript - e "install.packages('renv', repos='https://cloud.r-project.org')"
RUN Rscript - e "renv:restore()"