FROM quay.io/keycloak/keycloak:24.0.1

# Switch to the optimized production mode
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Start Keycloak with the default hostname
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start-dev"]
