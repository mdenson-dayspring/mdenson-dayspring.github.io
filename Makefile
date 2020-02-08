up:
	docker-compose -f docker/docker-compose.yml up -d nginx

down:
	docker-compose -f docker/docker-compose.yml down

build:
	docker run --rm -it -v `pwd`:/srv/jekyll -v `pwd`/vendor/bundle:/usr/local/bundle jekyll/jekyll:3.8 jekyll build

build-watch:
	docker run --rm -it -v `pwd`:/srv/jekyll -v `pwd`/vendor/bundle:/usr/local/bundle jekyll/jekyll:3.8 jekyll build --watch

bundle-install:
	docker run --rm -it -v `pwd`:/srv/jekyll -v `pwd`/vendor/bundle:/usr/local/bundle jekyll/jekyll:3.8 bundle install

bundle-update:
	docker run --rm -it -v `pwd`:/srv/jekyll -v `pwd`/vendor/bundle:/usr/local/bundle jekyll/jekyll:3.8 bundle update
