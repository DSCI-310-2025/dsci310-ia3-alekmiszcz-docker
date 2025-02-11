FROM rocker/rstudio:4.4.2

COPY renv.lock /home/rstudio/renv.lock
COPY renv/ /home/rstudio/renv/
COPY cowsay-test-script.R /home/rstudio/cowsay-test-script.R
COPY .Rprofile /home/rstudio/.Rprofile

WORKDIR /home/rstudio

RUN Rscript -e "install.packages('renv',repos='https://cloud.r-project.org')"
RUN Rscript -e "renv::restore()"