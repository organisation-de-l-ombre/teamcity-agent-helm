FROM jetbrains/teamcity-agent

MAINTAINER Matthieu P <matthieu974fr.pignolet@gmail.com>

ARG VCS_REF
ARG BUILD_DATE

LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/organisation-de-l-ombre/teamcity-agent-helm" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"

RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh \
 && chmod 700 get_helm.sh \
 && ./get_helm.sh
