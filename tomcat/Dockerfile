#pull down centos image
FROM Centos:6.8
MAINTAINER hexin<77592244@qq.com>
#copy jdk and tomcat into image
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ADD ./apache-tomcat-7.0.34.tar.gz /root
ADD ./jdk-7u65-linux-x64.tar.gz  /root
#set environment variable
ENV JAVA_HOME /root/jdk1.7.0_65
ENV PATH $JAVA_HOME/bin:$PATH
COPY ./tomcat-users.xml  /root/apache-tomcat-7.0.34/conf/        
#define entry point which will be run first when the container starts up
ENTRYPOINT /root/apache-tomcat-7.0.34/bin/startup.sh && tail -F /root/apache-tomcat-7.0.34/logs/catalina.out
