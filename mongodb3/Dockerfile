FROM d0d663863c34

MAINTAINER hexin <hexin@qq.com>

RUN    echo "[mongodb-org-3.4]" >>/etc/yum.repos.d/mongodb-org-3.4.repo
RUN    echo "name=MongoDB Repository" >>/etc/yum.repos.d/mongodb-org-3.4.repo
RUN    echo "baseurl=https://repo.mongodb.org/yum/redhat/6Server/mongodb-org/3.4/x86_64/" >>/etc/yum.repos.d/mongodb-org-3.4.repo
RUN    echo "gpgcheck=0" >>/etc/yum.repos.d/mongodb-org-3.4.repo
RUN    echo "enabled=1" >>/etc/yum.repos.d/mongodb-org-3.4.repo

RUN yum install -y mongodb-org

RUN mkdir -p /data/db/mongodb /data/logs/mongodb && chmod 777 -R /data/db /data/logs
ADD run.sh /run.sh
ADD set_mongodb_password.sh /set_mongodb_password.sh

EXPOSE 27017
CMD ["/run.sh"]
