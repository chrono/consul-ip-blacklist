#!/bin/bash
# extracts names of leaf nodes from a consul kv store, sharing a common root

root=$1  # ex: http://127.0.0.1:8500/v1/kv/foo/bar

# if curl or jq fail, we want to pass their exit code to our caller
set -o pipefail

curl -s $root?recurse | jq --raw-output '.[].Key' | while IFS='/' read -a parts; do
    echo "${parts[-1]}"
done
