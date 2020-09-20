PROJECT_NAME = service-nginx
CMD_DOCKER_COMPOSE=docker-compose -p laravel-docker
help:
	@echo ''
	@echo 'Bonjour'
	@echo 'PROJECT_NAME name is' $(PROJECT_NAME)

up: ## docker-compose up -d with good env variables
	$(CMD_DOCKER_COMPOSE) up -d $(PROJECT_NAME)

build: ## docker-compose build
	$(CMD_DOCKER_COMPOSE) build

stop: ## docker-compose stop
	$(CMD_DOCKER_COMPOSE) stop