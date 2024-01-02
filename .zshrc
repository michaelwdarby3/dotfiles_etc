# oh-my-zsh settings
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="spaceship"
DISABLE_AUTO_UPDATE="true"
plugins=(git zsh-syntax-highlighting)

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
	mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# PATH variable
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=~/Library/Python/3.7/bin:$PATH

# Remove cd and ls from command history
setopt HISTIGNORESPACE
alias cd=' cd'
#alias ls=' ls --color=tty'

# Local zshrc
ZSHRC_LOCAL=$HOME/.zshrc.local
if [[ ! -a $ZSHRC_LOCAL ]]; then
	touch $ZSHRC_LOCAL
fi
source $ZSHRC_LOCAL

#source "$HOME/.zsh/spaceship/spaceship.zsh"

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true

SPACESHIP_PROMPT_SUFFIXES_SHOW=true
SPACESHIP_CHAR_PREFIX=': '

SPACESHIP_CHAR_SYMBOL='\ue238'
SPACESHIP_CHAR_SUFFIX='  '

SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_TRUNC_REPO=false

SPACESHIP_TIME_SHOW=false


SPACESHIP_USER_SHOW=true
SPACESHIP_USER_SUFFIX=' '

SPACESHIP_GIT_BRANCH_SHOW=true
SPACESHIP_GIT_PREFIX=' on '
