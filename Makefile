.PHONY: rebuild build

# Image names
FRONTEND=udagram-frontend
FEED_API=udagram-api-feed
USER_API=udagram-api-user
REVERSE_PROXY=udagram-reverse-proxy

rebuild-frontend:
	@SERVICE=frontend make rebuild

rebuild-backend-feed:
	@SERVICE=backend-feed make rebuild

rebuild-backend-user:
	@SERVICE=backend-user make rebuild

rebuild:
	@docker-compose stop $$SERVICE
	@docker-compose rm -f $$SERVICE
	@docker-compose -f docker-compose.build.yaml build --force --parallel $$SERVICE
	@docker-compose up -d $$SERVICE

build:
	@docker-compose -f docker-compose.build.yaml build --parallel

publish-images:
	@${REPO:? Repository must be specified}
	@docker push ${REPO}/${FRONTEND}
	@docker push ${REPO}/${FEED_API}
	@docker push ${REPO}/${USER_API}
	@docker push ${REPO}/${REVERSE_PROXY}
