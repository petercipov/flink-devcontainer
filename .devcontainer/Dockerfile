FROM amazoncorretto:21-alpine3.21
RUN apk add bash

ADD install.sh /
RUN sh install.sh
ENV PATH="$PATH:/flink-dist/bin"
