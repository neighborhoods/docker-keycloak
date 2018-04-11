#!/bin/bash
set -e

eval $(/bin/aws-env)

exec /opt/jboss/docker-entrypoint.sh
