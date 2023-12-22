.PHONY: deploy
deploy:
	docker compose down; \
    docker network create reverse_proxy_network; \
    docker compose pull; \
    docker compose up --build --remove-orphans -d