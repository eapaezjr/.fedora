# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# shell
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1=" \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
# PS1='$(basename "$PWD" |head -c1)\$ '

# Auto Completion Case Insensitivew
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
# bind 'TAB:menu-complete'


# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Some other aliases
alias cat='bat --style=plain --paging=never' # In debian derivatives is batcat, in other it's just bat
alias ls='eza --group-directories-first'
alias tree='eza -T'
alias la='eza -la --group-directories-first'
alias l='eza -l'
alias vih='nvim .'
alias svih='sudo nvim .'
alias vi='nvim $1'
alias svi='sudo nvim $1'
alias git-user='git config --global user.name $1'
alias git-mail='git config --global user.email $1'
alias git-creds='git config --global credential.helper $1'
