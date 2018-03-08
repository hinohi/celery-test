#!/bin/sh

cd $(dirname $0)

LOGLEVEL=info
celery -A tasks worker --loglevel=$LOGLEVEL
