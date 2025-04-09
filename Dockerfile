# Enable health and metrics for Keycloak
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
# Set the Keycloak Admin credentials
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
# Set Base URL and Admin URL (Use the Render URL)
ENV KC_HOSTNAME=keycloak-on-render-fj9c.onrender.com
ENV KC_HTTP_PORT=8080
ENV KC_HTTPS_PORT=8443
ENV KC_PROXY=edge
ENV HTTP_ENABLED=TRUE
# Expose the port for Render
EXPOSE 8080
EXPOSE 8443
# Start Keycloak in development mode (use start-dev for local dev)
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start"]