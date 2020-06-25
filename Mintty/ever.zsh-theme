# zsh theme requires 256 color enabled terminal
# i.e TERM=xterm-256color
# based on sporty_256 but mine
#export VIRTUAL_ENV_DISABLE_PROMPT=yes

function prompt_char {
    if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

# Virtualenv: current working virtualenv
function prompt_virtualenv() {
    [[ -n "$VIRTUAL_ENV" ]] && echo '['`basename "$VIRTUAL_ENV"`']'
        [[ ! "$CONDA_DEFAULT_ENV" = "base" ]] && echo '['`basename "$CONDA_DEFAULT_ENV" | tr -d '\r'`']'
}

PROMPT='%B%F{160}$(prompt_char)%f %{$reset_color%}%b'

RPROMPT='%{$reset_color%}%B%F{111}$(prompt_virtualenv)%f%B%F{163}[%(!.%1~.%~)]%B%F{160}[%n%f%{$fg_bold[black]%}@%F{160}%m%F{160}]%f%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{164}|%f%F{164}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%BX%b%F{red}|%f%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[black]%}V%F{154}|"
