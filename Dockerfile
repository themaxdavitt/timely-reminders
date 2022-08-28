FROM alpine:3

RUN apk add --no-cache curl tzdata
ENV TZ=America/New_York
COPY setup.sh /srv/setup.sh
RUN /srv/setup.sh && rm /srv/setup.sh

COPY entrypoint.sh /srv/
COPY helpers/* /srv/
COPY periodic/ /etc/periodic
COPY periodic-human/ /srv/periodic-human/

ENTRYPOINT [ "/srv/entrypoint.sh" ]
