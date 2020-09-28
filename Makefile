PROJECT_NAME = service-nginx
CMD_DOCKER_COMPOSE=docker-compose -p laravel-docker
help:
	@echo ''
	@echo 'Bonjour'
	@echo 'PROJECT_NAME name is' $(PROJECT_NAME)

# Executable
WORKSPACE:=$(shell pwd)

LARAVEL=$(CMD_DOCKER_COMPOSE) exec --user www-data $(PROJECT_NAME)

up: ## docker-compose up -d with good env variables ##
	$(CMD_DOCKER_COMPOSE) up -d $(PROJECT_NAME)

build: ## docker-compose build ##
	$(CMD_DOCKER_COMPOSE) build

stop: ## docker-compose stop
	$(CMD_DOCKER_COMPOSE) stop

restart: ## docker-compose restart ##
	make stop
	make up

down: ## remove all container ##
	$(CMD_DOCKER_COMPOSE) down

execute: ## Run any task into the container
	$(CMD_DOCKER_COMPOSE) ${ARGS}

pwd:
	echo $(WORKSPACE)

ssh-laravel: ## Ssh into laravel container (www-data)
	$(LARAVEL) /bin/bash

ssh-php: ## Ssh into laravel container (www-data)
	$(CMD_DOCKER_COMPOSE) exec php sh

#PHALCON=$(CMD_DOCKER_COMPOSE) exec --user www-data $(PROJECT_NAME)

#init: ## install laravel
#	composer create-project laravel/laravel ./src/

init: ## install laravel
	$(LARAVEL) ./composer.sh create-project laravel/laravel ./src/

migrate:
	$(CMD_DOCKER_COMPOSE) exec php php /var/www/html/artisan migrate

#install: ## init porject ##
#	composer create-project laravel/laravel ./src/