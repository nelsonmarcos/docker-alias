alias docker-rm-all="docker container rm -f $(docker container ls -a|grep -v CONTAINER|awk '{print $1}')"
