FROM jenkins/jenkins:lts
USER root
RUN apt-get update
RUN apt-get install -y python-pip

# install jenkins plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# to skip git config
RUN git config --global user.email "jenkins@jenkins.com"
RUN git config --global user.name "jenkins"
