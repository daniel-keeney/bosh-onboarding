#!/usr/bin/env bash 
set -e

fly -t raas-bosh sp -p daniel-wilson-redis-bosh -l secrets.yml -c daniel-wilson-redis-bosh.yml
fly -t raas-bosh tj -j daniel-wilson-redis-bosh/deploy-redis
