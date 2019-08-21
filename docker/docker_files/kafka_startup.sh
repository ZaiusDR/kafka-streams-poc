#!/bin/bash

KAFKA_PATH=/usr/local/kafka
KAFKA_CONFIG=${KAFKA_PATH}/config/server.properties

# Just a new line at the end of the config
echo  "" >> ${KAFKA_CONFIG}

# Setup Listeners
echo "listeners=PLAINTEXT://:9092" >> ${KAFKA_CONFIG}
echo advertised.listeners=PLAINTEXT://localhost:9092 >> ${KAFKA_CONFIG}

# Start services
${KAFKA_PATH}/bin/zookeeper-server-start.sh ${KAFKA_PATH}/config/zookeeper.properties &
${KAFKA_PATH}/bin/kafka-server-start.sh ${KAFKA_PATH}/config/server.properties