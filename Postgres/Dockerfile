FROM postgres:12

LABEL maintainer="David Rahäuser <github@sweedinsight.net>"

COPY ./init-user-db.sh /docker-entrypoint-initdb.d/init-user-db.sh 

CMD ["docker-entrypoint.sh", "postgres"]