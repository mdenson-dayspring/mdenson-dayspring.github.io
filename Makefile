up:
	sudo docker-compose -f docker/docker-compose.yml up -d nginx

down:
	sudo docker-compose -f docker/docker-compose.yml down

build:
	sudo docker run --rm -it -v `pwd`:/srv/jekyll jekyll/jekyll:3.8 jekyll build

build-watch:
	sudo docker run --rm -it -v `pwd`:/srv/jekyll jekyll/jekyll:3.8 jekyll build --watch

clean:
	sudo docker run --rm -it -v `pwd`:/srv/jekyll jekyll/jekyll:3.8 jekyll clean
