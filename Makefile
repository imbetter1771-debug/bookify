COMPOSE=docker compose --env-file .env.development

dev-up:
	@$(COMPOSE) up -d

dev-down:
	@$(COMPOSE) down

dev-logs:
	@$(COMPOSE) logs -f

backend-run:
	@cd apps/backend && set -a && source ../../.env.development && set +a && go run cmd/api/main.go