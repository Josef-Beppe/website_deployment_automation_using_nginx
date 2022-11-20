#!/bin/bash

repository="https://github.com/Josef-Beppe/sample_website_for_automation.git"

# CACHEBUST has different value each time and therefore makes it possible to use cache on part of Dockerfile, but not all of it.
docker-compose build --pull --build-arg CACHEBUST=$(date +%s) --build-arg repo=$repository
docker-compose up -d
