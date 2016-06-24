FROM java:8

RUN  apt-get update && apt-get install -y curl git maven unzip

COPY ./entrypoint.sh /

ENV DB_HOST fenixedu-database-db
ENV DB_USER root
ENV DB_DATABASE fenixedu-database
ENV DB_PORT 3306

RUN chmod +x /entrypoint.sh

EXPOSE 8080

CMD ["./entrypoint.sh"]
