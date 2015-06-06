# Create docker images on the raspberry pi2.

- raspbian docker images create

  README.md

  rootfs

  ├── rpi2_base

  │   ├── Dockerfile

  │   ├── mkimage-raspbian.sh

  │   └── tar.sh

  └── rpi2_ssh

      ├── Dockerfile

      └── authorized_keys
  
- first

  sudo mkimages-raspbian.sh

- second

  sudo chroot raspbian

  dkg-reconfigure locales
  
  choice No. 138 en_US.UTF-8 encoding

- third

 sudo tar.sh

- build images

  docker build -t rpi2_base .
