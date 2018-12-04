FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y software-properties-common

RUN apt-add-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y bitcoin-qt bitcoind

ENTRYPOINT [ "bitcoind" ]