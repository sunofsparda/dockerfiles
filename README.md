# dockerfiles

# remove stopped containers
docker ps -a | grep Exited | cut -d ' ' -f 1 | xargs docker rm
docker ps -a | grep Exited | awk '{print $1}'| xargs docker rm

# remove images
docker images | grep none | awk '{print $3}' | xargs docker rmi
