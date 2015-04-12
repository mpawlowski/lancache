FROM centos:7

#get the latest nginx
ADD nginx/nginx.repo 	/etc/yum.repos.d/nginx.repo
RUN yum install -y nginx

ADD nginx/   		/etc/nginx

# create cache directories
RUN mkdir -p /srv/www/cache/installs
RUN mkdir -p /srv/www/cache/other
RUN mkdir -p /srv/www/cache/tmp
