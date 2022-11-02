#! /bin/bash

if [ $# -ne 1 ]; then
        echo "concurrent-curls.sh: usage error: try 'concurrent-curls.sh <file-containing-urls>'"
		exit 1
fi

curl -k --parallel --parallel-immediate --parallel-max 2 --config $1
