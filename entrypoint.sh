#!/usr/bin/env bash

if [ ! -z $INPUT_USERNAME ];
then echo $INPUT_PASSWORD | docker login $INPUT_REGISTRY -u $INPUT_USERNAME --password-stdin
fi

echo "$INPUT_RUN" | sed -e 's/\\n/;/g' > semicolon_delimited_script

echo "$SUPER_SECRET" && exec docker run -v "/var/run/docker.sock":"/var/run/docker.sock" $INPUT_OPTIONS --env $SUPER_SECRET='$SUPER_SECRET' --entrypoint=$INPUT_SHELL $INPUT_IMAGE -c "`cat semicolon_delimited_script`"
