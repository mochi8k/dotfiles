#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# -------------------------------------------------------

# My configuration

# aliases
# alias ll='ls -l -G'
# alias la='ls -al -G'

# ディレクトリ名でcd
# setopt auto_cd

# ビープ音を鳴らさない
setopt no_beep

# 補完キー連打で順に補完候補を自動で補完
setopt auto_menu

# カッコの対応などを自動的に補完
setopt auto_param_keys

# 補完機能を使用する
autoload -U compinit && compinit

# 補完候補を初回のTABで一覧表示(default ON)
setopt auto_list

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# historyコマンドは履歴に登録しない
setopt hist_save_no_dups

# 大文字小文字を区別しない（大文字を入力した場合は区別する）
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ------------------------------------------------------------------
# peco

# history検索
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# リポジトリにcd
alias g='cd $(ghq root)/$(ghq list | peco)'

# ------------------------------------------------------------------
# Redis
alias rs='redis-server'
alias rc='redis-cli'

# Docker
alias d='docker'
alias dm='docker-machine'
alias dc='docker-compose'
alias dps='docker ps --format "{{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Command}}\t{{.RunningFor}}"'
alias de='docker exec -it `dps | peco | cut -f 1` /bin/bash'
