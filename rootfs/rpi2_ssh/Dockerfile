FROM rpi2_base
MAINTAINER bantana <b@aozsky.com>

#RUN echo 'deb http://mirrors.aliyun.com/raspbian/raspbian/ wheezy main contrib non-free rpi'>/etc/apt/sources.list
RUN echo 'nameserver 114.114.114.114'>/etc/resolv.conf
RUN echo 'nameserver 8.8.4.4'>>/etc/resolv.conf
RUN apt-get update -y
RUN apt-get install -y sudo openssh-server
RUN  /etc/init.d/ssh start
RUN useradd pi -G sudo -s /bin/bash -m
RUN echo 'pi:raspberry' | chpasswd
ADD sudoers /etc/sudoers
RUN chown root:root /etc/sudoers && chmod 440 /etc/sudoers
RUN mkdir -p /home/pi/.ssh
ADD authorized_keys /home/pi/.ssh/authorized_keys
RUN chown -R pi:pi /home/pi/.ssh; chmod 700 /home/pi/.ssh

EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]
