FROM rocker/rstudio:4.4.2

WORKDIR /home/rstudio/
COPY renv.lock /home/rstudio/renv.lock
COPY renv/ /home/rstudio/renv/
COPY cowsay-test-script.R /home/rstudio/cowsay-test-script.R

RUN Rscript - e "install.packages('renv', repos='https://cloud.r-project.org')"
RUN Rscript - e "renv:restore()"