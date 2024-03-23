# alias
alias ls='ls -FG'
alias ll='ls -laFG'

alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"

# setopt
setopt nonomatch

setopt no_beep  # 音を鳴らさない

setopt auto_pushd  # ディレクトリの移動にpushd
setopt pushd_ignore_dups  # 上記で、重複は削除
setopt auto_cd  # 一致するディレクトリに cdなしで移動できる

setopt hist_ignore_dups  # 直前と同じコマンドは履歴に追加しない
setopt share_history  # 他のzshで履歴を共有する
setopt inc_append_history  # 即座に履歴を保存する

# history
export HISTFILE=~/.zsh_history  # 履歴をメモリだけでなく、ファイルにも保存する
export HISTSIZE=10000  # メモリに保存する履歴サイズ
export SAVEHIST=10000  # ファイルに保存する履歴サイズ

# eval
eval "$(pyenv init --path)"
eval "$(starship init zsh)"


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

