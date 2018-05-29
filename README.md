# Blank Presentations

This repository provides scaffolding for blank presentations that can be produced using R markdown and `xaringan`.

## Docker

A Dockerfile is provided for a self-contained RStudio instance. This instance includes all packages required to compile the blank presentation R markdown document into a html document using [`xaringan`](https://github.com/yihui/xaringan).

To build:

``` sh
docker build --rm -t presentations docker/
```

To start up RStudio in the browser, run the following command (from the root of this directory) and then navigate to [localhost](http://localhost:8787/) in your browser.

``` sh
docker run --rm -d -t -v $(pwd):/home/rstudio -p 8787:8787 presentations
```

## Hosting

The presentations can be hosted on GitHub of course. The blank presentation can be found [here](https://stevelane.github.io/blank-presentations/blank-presentation/)
