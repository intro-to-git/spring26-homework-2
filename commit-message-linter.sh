#!/bin/bash

git log --pretty=format:"%s" | while read -r message; do
    if [ ${#message} -lt 10 ]; then
        echo "Commit \"$message\": message is too short"
    fi

    if [[ ! "${message,,}" =~ add|fix|update|remove|improve ]]; then
        echo "Commit \"$message\": message does not contain required verb"
    fi
done
