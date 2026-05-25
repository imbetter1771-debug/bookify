# Bookify

Fullstack monorepo project for PDF book processing, rendering and reading experience.

## Tech Stack
###### maybe

### Backend
- Go
- Chi router
- PostgreSQL
- Redis (planned)

### Frontend
- React
- TypeScript
- TailwindCSS
- React Query
- Framer Motion

### Infra
- Docker
- Docker Compose
- Makefile
- Git Flow

---

## Project Structure


apps/
backend/
frontend/
worker/

migrations/
deploy/
scripts/


---

## Setup

### 1. Start infrastructure

```bash
make dev-up
```
### 2. Run backend
```
cd apps/backend
APP_PORT=8080 go run cmd/api/main.go
```
#### -Environment-

Copy env example:
```
cp .env.example .env.development
```