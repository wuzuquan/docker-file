#!/usr/bin/env bash
echo "start jar...."
java  $JAVA_OPTS -jar /eureka.jar  --eureka.client.service-url.defaultZone=$EUREKA_URL_LIST
