FROM centos:6.5
MAINTAINER Dnaiel Lopes "dl.lopes@gmail.com"

ENV USER root
ENV PASS xpto

RUN yum update && yum update
RUN yum install java-1.7.0-openjdk && yum install apache-maven
ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /opt/jenkins.war
RUN ln -sf /jenkins /root/.jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
VOLUME ["/jenkins"]
CMD [""]
