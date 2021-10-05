#züg vor em prompt

# fortune | cowsay -s -f tux |lolcat
clear
neofetch

HOST_NAME=Samuel

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtblu="\e[0;34m"   # Blue
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtblu%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1=" > "

alias c="clear"
alias py="python3"
alias bpy="bpython"
alias subl="/mnt/c//Programme/Sublime\ Text/subl.exe"
alias v="vim"
alias la="ls -la"
alias da="deactivate"

home(){
	cd /mnt/c/Users/Samuel_Huwiler
}

cd_rp (){
	cd /mnt/c/Users/Samuel_Huwiler/'OneDrive - sluz'/Dokumente/GitHub/
}

mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}
cd_prg (){
        cd /mnt/c/Users/Samuel_Huwiler/'OneDrive - sluz'/Dokumente/GitHub/Programieren
        }

mkenv(){
	tmp=$PWD
	cd ~/Virtuele_envs
	python3 -m venv env_$1
	cd "$TMP"
}

env ()
{
	source ~/Virtuele_envs/env_$1/bin/activate
}

envcd ()
{
	cd ~/Virtuele_envs/env_$1
}

server ()
{
	open http://localhost:$2
	python3 -m http.server -d $1 $2

}

