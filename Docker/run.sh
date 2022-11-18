#!/bin/bash

repository="https://github.com/Josef-Beppe/sample_website_for_automation.git"

docker-compose build --pull --build-arg CACHEBUST=$(date +%s) --build-arg repo=$repository
docker-compose up -d
