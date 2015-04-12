FROM centos:7

# get the latest net-tools
RUN yum install -y net-tools

# get and configure the latest nginx
ADD nginx/nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum install -y nginx
RUN useradd www-data
ADD nginx/ /etc/nginx

# get and configure latest bind dns server
RUN yum install -y bind bind-utils
ADD bind/named.conf /etc/named.conf
ADD bind/named/	/etc/named	
EXPOSE 53/udp

# create cache directories
RUN mkdir -p /srv/www/cache/installs
RUN mkdir -p /srv/www/cache/other
RUN mkdir -p /srv/www/cache/tmp

# move scripts
ADD scripts/configure-bind /usr/local/bin/configure-bind
RUN /usr/local/bin/configure-bind


