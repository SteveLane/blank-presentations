FROM rocker/tidyverse
LABEL maintainer="Steve Lane"
LABEL email="lane.s@unimelb.edu.au"

## I want tree
RUN apt-get install -y --no-install-recommends tree

## Add in required package
RUN . /etc/environment \ 
  && install2.r --error --repos $MRAN --deps TRUE \
    evaluate httpuv Rcpp servr miniUI gapminder

## Add in required package
RUN . /etc/environment \ 
  && install2.r --error --repos $MRAN --deps FALSE \
    broom

## Add in required packages
RUN . /etc/environment \ 
  && installGithub.r yihui/xaringan hadley/emo

# Remove unnecessary tmp files
RUN rm -rf /tmp/downloaded_packages/ /tmp/*.rds

# Add directories for some infrastructure
RUN mkdir /home/fancyBox \
  && mkdir /home/ggsteve

# Add script to get stuff and run it
ADD get-stuff.sh /tmp
RUN chmod u+x /tmp/get-stuff.sh \
  && cd /tmp \
  && ./get-stuff.sh

# Run rstudio
CMD ["/init"]
