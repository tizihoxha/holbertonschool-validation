FROM jenkins/jenkins:lts
COPY --chown=jenkins:jenkins executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY --chown=jenkins:jenkins path/to/custom.hpi /usr/share/jenkins/ref/plugins/
docker run --rm -i hadolint/hadolint < Dockerfile
