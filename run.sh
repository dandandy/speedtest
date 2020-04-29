#!/usr/bin/env bash

set -euox pipefail

source ./env.sh

# docker run speedtest --progress=no --format=csv > data/data.csv

docker run -i --net=host -v $(pwd)/data:/data mysql mysql --local-infile=1 -h "${host}" -u "${user}" --password="${password}" --database="${database}" < insert.sql

docker run -i --net=host -v $(pwd)/data:/data mysql mysql --local-infile=1 -h "${host}" -u "${user}" --password="${password}" --database="${database}" < <(echo "select * from network_logs order by ts DESC limit 3")
