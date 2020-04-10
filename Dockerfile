FROM gcc:4.9

COPY . /usr/src/redis-cluster-proxy
WORKDIR /usr/src/redis-cluster-proxy

RUN make install

ENTRYPOINT ["redis-cluster-proxy"]