java -Xms$XMX -Xmx$XMX -XX:-UseGCOverheadLimit -XX:+HeapDumpOnOutOfMemoryError -jar  /zipkin-server.jar --logging.level.zipkin2=WARN --STORAGE_TYPE=elasticsearch --ES_INDEX=zipkin --KAFKA_TOPIC=zipkin  --ES_HOSTS=$ES_HOSTS --KAFKA_BOOTSTRAP_SERVERS=$KAFKA_BOOTSTRAP_SERVERS