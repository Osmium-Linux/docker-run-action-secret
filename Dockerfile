FROM docker:19.03

RUN apk add bash

ENV GITHUB_TOKEN=$GITHUB_TOKEN

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
