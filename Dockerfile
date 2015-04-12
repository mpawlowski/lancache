FROM centos:7

RUN yum install -y git
ADD nginx/nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum install -y nginx
RUN yum install -y golang

# add bash profile
ADD profile /root/.lancacherc
RUN cat /root/.lancacherc >> .bashrcc

# configure nginx
RUN useradd www-data
ADD nginx/ /etc/nginx

# configure dns server
RUN mkdir -p /srv/dns/work
RUN export GOPATH=/srv/dns/work
RUN go get github.com/docker/dnsserver
ADD dns/dns.go /srv/dns

# create cache directories
RUN mkdir -p /srv/www/cache/installs
RUN mkdir -p /srv/www/cache/other
RUN mkdir -p /srv/www/cache/tmp

