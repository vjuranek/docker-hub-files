FROM jboss/wildfly

COPY postgres-module.cli postgres-module.cli

# fails because of permissions, --chown option on available on Fedora
#ADD https://jdbc.postgresql.org/download/postgresql-9.4.1208.jar /tmp/postgresql.jar
RUN curl -o /tmp/postgresql.jar https://jdbc.postgresql.org/download/postgresql-9.4.1208.jar

RUN /opt/jboss/wildfly/bin/jboss-cli.sh --file=postgres-module.cli && rm -f /tmp/postgresql.jar && rm -f postgres-module.cli
RUN /opt/jboss/wildfly/bin/add-user.sh scias scias --silent

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
