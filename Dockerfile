FROM quay.io/keycloak/keycloak:24.0.1

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Expose port 8080 so Render detects it
EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start-dev"]
