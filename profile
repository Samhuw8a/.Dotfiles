neofetch

HOST_NAME=Samuel

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

# Vi mode
set -o vi

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

function mkcd()
{
	mkdir $1 && cd $1
}

function mkenv ()
{
	tmp=$PWD
	cd ~/Virtuele_envs
	python3 -m venv env_$1
	cd "$tmp"

}
function env ()
{
	source ~/Virtuele_envs/env_$1/bin/activate
}

function envcd ()
{
	cd ~/Virtuele_envs/env_$1
}

function ptsd (){
python3 ~/Programieren/ptsd/ptsd.py $1
}

function server ()
{
	open http://localhost:$2
	python3 -m http.server -d $1 $2 
	
}

alias c="clear"
alias envls="ls ~/Virtuele_envs/"
alias py="python3"
alias v="vim"
alias gcc="gcc-11"
alias la="ls -la"
