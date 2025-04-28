FROM eclipse-temurin:21.0.7_6-jdk-noble

RUN apt-get update
RUN apt-get install -y software-properties-common bash make cmake build-essential

ADD flink.sh /
ADD pyflink.sh /
ADD pyflink.sh /


RUN bash pyflink.sh
RUN bash flink.sh
ENV PATH="$PATH:/flink-dist/bin"


