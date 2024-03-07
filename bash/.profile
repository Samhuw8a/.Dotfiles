neofetch

# cd /Users/Samuel/Programieren/Stundenplan
# /Users/Samuel/Programieren/Stundenplan/main.py list
# cd ~

HOST_NAME=Samuel

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export EDITOR=/usr/bin/nvim

# eval "$(zoxide init bash)"

export HISTSIZE=5000
export HISTFILESIZE=10000

# Vi mode
# set -o vi

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtblu="\e[0;34m"   # Blue
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset
bldpur='\e[1;35m' # Bold Purple

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
	parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

printf "\n $txtblu%s: $bldpur%s $txtgrn%s $txtpur%s\n$txtrst" "$HOST_NAME" "$dir" "$(parse_git_branch)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1=" > "

function cd_rp(){
	cd /mnt/c/Users/Samuel_Huwiler/'OneDrive - sluz'/Dokumente/GitHub
}

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

TERM=xterm-256color
n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, either remove the "export" as in:
    #    NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    #    (or, to a custom path: NNN_TMPFILE=/tmp/.lastd)
    # or, export NNN_TMPFILE after nnn invocation
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

	nnn -e "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

alias c="clear"
alias envls="ls ~/Virtuele_envs/"
alias py="python3.11"
alias v="nvim"
alias gcc="gcc-11"
alias la="n"
alias da="deactivate"
alias f="n"
alias cl="tty-clock"
alias tm="tmux"
alias lg="lazygit"

alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
