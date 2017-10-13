FROM maven:3-jdk-8-slim

MAINTAINER Gerd Aschemann <gerd@aschemann.net>

# Add GraphViz (2.38) for AsciiDoctor Diagram
RUN apt-get update \
    && apt-get -yy dist-upgrade \
    && apt-get install -yy graphviz ttf-freefont \
    && apt-get autoremove