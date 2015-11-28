#lancache

Game Update Caching for LAN Parties

Initially pulled from http://blog.multiplay.co.uk/2014/04/lancache-dynamically-caching-game-installs-at-lans-using-nginx/

#1. Usage

	git clone git@github.com:mpawlowski/lancache.git
	cd lancache/
	docker build -t lancache
	docker run \
        -p 80:80 \
        -v /srv/www/cache:/tmp/cache \
        lancache;
