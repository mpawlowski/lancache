FROM centos:7

#get the latest nginx
ADD nginx/nginx.repo 	/etc/yum.repos.d/nginx.repo
RUN yum install nginx

ADD nginx/   		/etc/nginx

