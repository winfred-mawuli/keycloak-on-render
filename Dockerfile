FROM quay.io/keycloak/keycloak:24.0.1

# Enable health and metrics for Keycloak
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Set the Keycloak Admin credentials
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=adminpassword 

# Set Base URL and Admin URL (Use the Render URL)
ENV KC_HOSTNAME=keycloak-on-render-fj9c.onrender.com
ENV KC_HTTP_PORT=8080
ENV KC_HTTPS_PORT=8443
ENV KC_PROXY=edge 

# Expose the port for Render
EXPOSE 8080

# Start Keycloak with admin credentials
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start-dev", "--keycloak.admin.username", "${KEYCLOAK_ADMIN}", "--keycloak.admin.password", "${KEYCLOAK_ADMIN_PASSWORD}"]
