function log {
        echo [$(date "+%d/%m/%Y %H:%M:%S")] - $@
}
script="docker-aliases.sh"

if [ -f ~/.$script ];then
  log "Backing up current $script"
	log $(cp -v ~/.$script ~/.$script.$(date +%Y%m%d%S))
fi
log  "Copying $script to your home dir"
log $(cp -v $script ~/.$script)
grep -q "source ~/.${script}" ~/.bashrc || grep -q "source ~/.${script}" ~/.bash_profile
if [ $? -ne "0" ];then
	log "Adding source ~/.${script} to ~/.bash_profile"
	echo "source ~/.${script}" >> ~/.bash_profile
fi
log "Success"
