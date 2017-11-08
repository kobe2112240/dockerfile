FROM Centos:6.8

MAINTAINER hx <77592244@qq.com>

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
RUN yum install -y nodejs python-setuptools sysstat git vixie-cron

RUN npm install -g grunt pm2
RUN mkdir -p /data/www && chmod -R 777 /data/www

RUN easy_install supervisor && echo_supervisord_conf > /etc/supervisord.conf
RUN sed -E -i 's/^nodaemon.+?/nodaemon=true/' /etc/supervisord.conf

RUN chkconfig crond on
RUN sed -E -i "s/account    required   pam_loginuid.so/account    optional   pam_loginuid.so/" /etc/pam.d/crond

EXPOSE 8010

CMD ["/usr/bin/supervisord"]
