FROM docker:19.03

RUN apk add bash

ENV TOKEN=$SUPER_SECRET

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
