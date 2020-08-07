FROM jenkins/jenkins:2.225

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# install plugins
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

#COPY seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml

# skil jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
