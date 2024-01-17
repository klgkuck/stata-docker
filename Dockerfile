FROM ubuntu:jammy

RUN apt-get update && apt-get -y install mc libncurses5
RUN mkdir -p /opt/stata/13
RUN mkdir -p /workspace

COPY Stata13-ubuntu.tar.gz Stata13-ubuntu.tar.gz

COPY stata.lic /opt/stata/13/ 

RUN tar -zxvf Stata13-ubuntu.tar.gz --directory /opt/stata/

RUN rm Stata13-ubuntu.tar.gz

WORKDIR "/workspace"

CMD ["/opt/stata/13/stata-mp"]
