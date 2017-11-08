###local centos images##
FROM 87fe14395856 

MAINTAINER hexin  <77592244@qq.com>

RUN yum update -y
RUN yum install -y memcached

EXPOSE 11211

CMD ["memcached", "-u", "daemon"]
