# check for topics and partitions
unset JMX_PORT;kafka-topics.sh --describe --zookeeper zookeeper:2181 --topic transporter.requests.abcb4592-be9f-49eb-b68a-d715f6c53743

# generate reassignment JSON; this script
unset JMX_PORT; ./kafka-move-leadership.sh --broker-id 0 --first-broker-id 0 --last-broker-id 3 --zookeeper zookeeper:2181 > partitions-to-move.json

# start reassignment process; Kafka built-in script
unset JMX_PORT; kafka-reassign-partitions.sh --zookeeper zookeeper:2181 --reassignment-json-file partitions-to-move.json --execute

# monitor progress of reassignment process; Kafka built-in script
unset JMX_PORT; kafka-reassign-partitions.sh --zookeeper zookeeper:2181 --reassignment-json-file partitions-to-move.json --verify

# stop kafka server
unset JMX_PORT; kafka-server-stop.sh

# check topics
 unset JMX_PORT; /opt/kafka/bin/kafka-topics.sh --zookeeper zookeeper:2181 --list
