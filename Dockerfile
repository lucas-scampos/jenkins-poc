# docker cp e32:/var/jenkins_home/jobs/seed/config.xml seedJob.xml
# copy job create from jenkins into local machine

FROM jenkins/jenkins:2.225

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# install plugins
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml

# skil jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
