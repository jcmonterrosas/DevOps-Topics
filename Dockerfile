FROM jenkins/jenkins

LABEL maintainer="jcmonterrosas@unal.edu.co"
USER root

RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins
USER test
