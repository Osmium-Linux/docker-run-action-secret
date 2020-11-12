FROM docker:19.03

RUN apk add bash

ENV GITHUB_TOKEN=${{ secrets.github_token }}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
