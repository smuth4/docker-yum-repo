FROM centos:6

WORKDIR /repo

ENV CREATEREPO_OPTIONS=""

RUN yum install -y createrepo python
COPY repo.sh /opt/repo.sh
ENTRYPOINT ["/bin/bash", "-x", "/opt/repo.sh"]

VOLUME /repo
EXPOSE 8000