up:
	docker-compose -f docker/docker-compose.yml up -d nginx

down:
	docker-compose -f docker/docker-compose.yml down

build:
	docker run --rm -it -v `pwd`:/srv/jekyll jekyll/jekyll:3.8 jekyll build

build-watch:
	docker run --rm -it -v `pwd`:/srv/jekyll jekyll/jekyll:3.8 jekyll build --watch

clean:
	docker run --rm -it -v `pwd`:/srv/jekyll jekyll/jekyll:3.8 jekyll clean
