#!/usr/bin/env bash
set -e
export TEST=1
source env.sh
export AWS_REGION=us-west-2
./generate.sh
UPDATE_SNAPSHOTS=true go test ./... $@