.PHONY: rebuild

rebuild-frontend:
	@SERVICE=frontend make rebuild

rebuild:
	@docker-compose stop $$SERVICE
	@docker-compose rm -f $$SERVICE
	@docker-compose build --force --parallel $$SERVICE
	@docker-compose up -d $$SERVICE
