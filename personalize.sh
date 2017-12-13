export my_uid=$(id -u)
export my_gid=$(id -g)
sed -i -e "s/<UID>/$my_uid/g" Dockerfile
sed -i -e "s/<GID>/$my_gid/g" Dockerfile
