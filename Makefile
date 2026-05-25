include .env.development
export

COMPOSE=docker compose --env-file .env.development

dev-up:
	@$(COMPOSE) up -d

dev-down:
	@$(COMPOSE) down

dev-logs:
	@$(COMPOSE) logs -f

migrate-up:
	@migrate -path migrations \
	-database "$(DATABASE_URL)" up

migrate-down:
	@migrate -path migrations \
	-database "$(DATABASE_URL)" down

migrate-create:
	@migrate create -ext sql -dir migrations -seq $(name)

backend-run:
	@cd apps/backend && go run cmd/api/main.go