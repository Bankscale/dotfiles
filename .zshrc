autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%(!.%F{red}.%F{green})%n%f%F{white}@%f%F{cyan}%m%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

[[ -r ~/.repos/znap/znap.zsh ]] ||
	git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/.repos/znap
source ~/.repos/znap/znap.zsh
znap source marlonrichert/zsh-autocomplete

export EDITOR=vim
export PF_ASCII="Catppuccin"
export PF_COL3=1
export PASTEL_COLOR_MODE=24bit

alias ls='ls --color=auto'
alias grep='grep --color'
alias ip='ip -color=auto'
alias public_ip='curl --ipv4 ifconfig.me'
alias public_ip6='curl --ipv6 ifconfig.me'
alias aria2c='aria2c -s16 -x16'
alias tb="nc termbin.com 9999"
alias wg-quick="sudo wg-quick"
alias less="less -R"
alias bios='systemctl reboot --firmware-setup'

source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(fzf --zsh)

bindkey -v
bindkey ^R history-incremental-search-backward
bindkey ^S history-incremental-search-forward
#bindkey              '^I' menu-select
#bindkey "$terminfo[kcbt]" menu-select
bindkey "^I" complete-word
bindkey "$terminfo[kcbt]" menu-select

#History
export HISTFILE=~/.histfile
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export SAVEHIST=1000000
setopt appendhistory

# bun completions
[ -s "/home/tobi/.bun/_bun" ] && source "/home/tobi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/Richard/.config/.dart-cli-completion/zsh-config.zsh ]] && . /home/Richard/.config/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export LIBVIRT_DEFAULT_URI="qemu:///system"
export PATH=/home/richard/.local/bin:$PATH
