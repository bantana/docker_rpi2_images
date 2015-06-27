FROM jessie:ssh
MAINTAINER bantana <b@aozsky.com>

RUN apt-get update -y
RUN apt-get install -y sudo clang

EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]
