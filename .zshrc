# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/daphne/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# 
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='%F{#9dc956}%n@%m %1~ $ %f'
alias config='/usr/bin/git --git-dir=/home/daphne/.dotfiles/ --work-tree=/home/daphne'
export PATH=$PATH:/home/daphne/intelFPGA_lite/23.1std/quartus/bin:/home/daphne/intelFPGA_lite/23.1std/questa_fse/linux_x86_64
export QSYS_ROOTDIR="/home/daphne/intelFPGA_lite/23.1std/quartus/sopc_builder/bin"
export LM_LICENSE_FILE="/home/daphne/intelFPGA_lite/23.1std/licenses/LR-282636_License.dat"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# start sway automatically on login
if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    exec sway
fi
