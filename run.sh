#!/bin/bash

set -eu

socat TCP-LISTEN:8002,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock &
python -m SimpleHTTPServer 8001
