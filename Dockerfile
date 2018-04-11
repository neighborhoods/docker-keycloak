FROM neighborhoods/keycloak:base-latest

USER root
RUN curl -L -o /bin/aws-env https://github.com/Droplr/aws-env/raw/872ca7e45a8fdc519ff40745c56175ae81d3b66b/bin/aws-env-linux-amd64
RUN chmod +x /bin/aws-env

COPY docker-entrypoint.sh /docker-entrypoint.sh

USER jboss

ENTRYPOINT ["/docker-entrypoint.sh"]
