#!/bin/sh

cat <<EOT >> /etc/crontabs/root
# do daily human maintenance between 8am (inclusive) and 11pm (exclusive) :)
*/15    8-22    *       *       *       run-parts /srv/periodic-human/15min
0       8-22    *       *       *       run-parts /srv/periodic-human/hourly

EOT
