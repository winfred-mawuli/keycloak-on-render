FROM quay.io/keycloak/keycloak:24.0.1

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
# Set the Keycloak Admin credentials
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
# Set Base URL and Admin URL
ENV KC_HOSTNAME=my-keycloak.onrender.com
ENV KC_HTTP_PORT=8080
ENV KC_HTTPS_PORT=8443
ENV KC_PROXY=edge

# Expose the port
EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start-dev"]
