#!/bin/sh

WAIT_SECONDS=${WAIT_SECONDS:=3600}

# infinite loop
while true
do
  ./docker-gc
  # wait an hour
  sleep "$WAIT_SECONDS"
done
