up:
	docker-compose -f docker/docker-compose.yml up -d nginx

down:
	docker-compose -f docker/docker-compose.yml down

build:
	docker-compose -f docker/docker-compose.yml run --rm jekyllproc jekyll build --watch

build-once:
	docker-compose -f docker/docker-compose.yml run --rm jekyllproc jekyll build

bundle-install:
	docker-compose -f docker/docker-compose.yml run --rm jekyllproc bundle install

bundle-update:
	docker-compose -f docker/docker-compose.yml run --rm jekyllproc bundle update
