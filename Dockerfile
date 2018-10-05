# vim:set ft=dockerfile:
FROM mdillon/postgis:9.5

COPY docker-entrypoint.sh /usr/local/bin/
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/postgis.sh
COPY ./update-postgis.sh /usr/local/bin

CMD ["postgres"]
