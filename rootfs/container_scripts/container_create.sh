docker create --name $container -h $container_hostname $docker_image_name
docker start $container
docker exec $container su -c  'echo "Asia/Hong_Kong">/etc/timezone  && sudo dpkg-reconfigure --frontend noninteractive tzdata'
docker exec $container ip addr
