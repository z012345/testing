HISTCONTROL=ignoreboth

setfont ter-v14n.psf.gz
export LANG=ru_RU.UTF-8

a=$(df -h | grep sda2)         ; echo "$a"
a=$(du -sh /nix/store)         ; echo "$a"  
a=$(ls -1  /nix/store | wc -l) ; echo "$a" 

echo "====================="
