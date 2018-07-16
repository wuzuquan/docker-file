export STORAGE_TYPE=elasticsearch

export ES_HOSTS=http://127.0.0.1:9200

export ES_MAX_REQUESTS=100

export ES_INDEX=zipkin

export ES_DATE_SEPARATOR=-

export ES_INDEX_REPLICAS=3

export ES_INDEX_SHARDS=5

export KAFKA_TOPIC=zipkin

export KAFKA_STREAMS=100

export KAFKA_MAX_MESSAGE_SIZE=10485760

export KAFKA_BOOTSTRAP_SERVERS=127.0.0.1:9092

java -Xms8g -Xmx8g \

-Dloader.path='zipkin-autoconfigure-collector-kafka10-module.jar,zipkin-autoconfigure-collector-kafka10-module.jar!/lib' \

-Dspring.profiles.active=kafka \

-cp zipkin-server-exec.jar \

org.springframework.boot.loader.PropertiesLauncher