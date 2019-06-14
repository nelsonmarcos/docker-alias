function log {
        echo [$(date "+%d/%m/%Y %H:%M:%S")] - $@
}
script="~/.docker-aliases.sh"

if [ -f $script ];then
  log "Backing up current $script"
	log $(cp -v $script $script.$(date +%Y%m%d%S))
fi
log  "Copying $script to your home dir"
log $(cp -v .docker-alias.sh ~/)
log Finished
