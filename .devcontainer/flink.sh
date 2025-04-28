#!/bin/bash

echo "Installing Flink"
wget https://dlcdn.apache.org/flink/flink-2.0.0/flink-2.0.0-bin-scala_2.12.tgz
tar -xvzf ./flink-2.0.0-bin-scala_2.12.tgz
mv ./flink-2.0.0 /flink-dist
rm ./flink-2.0.0-bin-scala_2.12.tgz