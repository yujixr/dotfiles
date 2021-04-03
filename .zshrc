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

# Customize to your needs...
autoload -Uz compinit promptinit
compinit
promptinit
eval "$(starship init zsh)"

if [ "$(command -v vim)" ]; then
    unalias -m 'vi'
    alias vi='vim'
fi

if [ "$(command -v exa)" ]; then
    unalias -m 'l'
    unalias -m 'ls'
    unalias -m 'll'
    unalias -m 'la'
    alias ls='exa -G --color auto --icons -s type'
    alias ll='exa -l --color always --icons -s type'
    alias la='exa -l --color always --icons -a -s type'
fi

if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat'
fi

if [ "$(command -v hexyl)" ]; then
  unalias -m 'od'
  alias od='hexyl'
fi

# Special keys
# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -A key

key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

# setup key accordingly
[[ -n "${key[Home]}"     ]]  && bindkey  "${key[Home]}"     beginning-of-line
[[ -n "${key[End]}"      ]]  && bindkey  "${key[End]}"      end-of-line
[[ -n "${key[Insert]}"   ]]  && bindkey  "${key[Insert]}"   overwrite-mode
[[ -n "${key[Delete]}"   ]]  && bindkey  "${key[Delete]}"   delete-char
[[ -n "${key[Up]}"       ]]  && bindkey  "${key[Up]}"       history-substring-search-up
[[ -n "${key[Down]}"     ]]  && bindkey  "${key[Down]}"     history-substring-search-down
[[ -n "${key[Left]}"     ]]  && bindkey  "${key[Left]}"     backward-char
[[ -n "${key[Right]}"    ]]  && bindkey  "${key[Right]}"    forward-char
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"   beginning-of-buffer-or-history
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}" end-of-buffer-or-history

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        printf '%s' "${terminfo[smkx]}"
    }
    function zle-line-finish () {
        printf '%s' "${terminfo[rmkx]}"
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

# Use history substring search
source "${ZDOTDIR:-$HOME}/.zprezto/modules/history-substring-search/external/zsh-history-substring-search.zsh"
# Syntax highlighting
source "${ZDOTDIR:-$HOME}/.zprezto/modules/syntax-highlighting/external/zsh-syntax-highlighting.zsh"

setopt ignoreeof                                                # ignore Ctrl+D
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
setopt nonomatch                                                # Don't show error message

# Launch tmux.
tmux_count=$(ps -ax | grep '[t]mux' | wc -l | bc)
if [ -s "$(where tmux)" ]; then
  if [ $tmux_count = 0 ]; then
    exec tmux -u new-session
  elif [ $tmux_count = 1 ]; then
    exec tmux -u attach
  fi
fi
