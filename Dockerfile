FROM quay.io/keycloak/keycloak:24.0.1

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
# Set the Keycloak Admin credentials
ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin
# Set Base URL and Admin URL
ENV KC_HOSTNAME=https://my-keycloak.onrender.com
ENV KC_HTTP_PORT=8080
ENV KC_FEATURES=hostname
ENV KC_HOSTNAME_STRICT_HTTPS=false
ENV KEYCLOAK_SSL_REQUIRED=none
ENV KC_HOSTNAME_STRICT_BACKCHANNEL=false

# Expose the port
EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start-dev"]
