# Add HomeBrew's bin directory to path so you can use HomeBrew's binaries like `starship`
# Fish uses `fish_add_path` instead of `export PATH` modify $PATH.
fish_add_path "/opt/homebrew/bin/"

set fish_greeting

function fish_prompt
    if set -q fish_should_add_space
        if test "$fish_should_add_space" = "1"
            echo
        end
    end

    set_color "#ffa500"
    echo -n 'λ '
    set_color normal

    set -U fish_should_add_space 0
end


function prepare_command --on-event fish_preexec
    if not string match -q "clear" -- $argv
        set -U fish_should_add_space 1
    else
        set -U fish_should_add_space 0
    end
end

set -U fish_should_add_space 0

# homebrew path
set -gx PATH /opt/homebrew/bin $PATH

# bun path
set -gx BUN_INSTALL $HOME/.bun
set -gx PATH $BUN_INSTALL/bin $PATH



# alias
alias vim="nvim"
alias vt='vim "+terminal"'

# python3
alias python="python3"
alias pip="pip3"

# git
alias gs="git status"
alias ga="git add"
alias gb="git branch"
alias gbd="git branch -D"
alias gc="git commit"
alias gp="git push"
alias gpp="git pull"
alias gcb="git checkout -b"

# lsd
alias ls='lsd --icon never'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

if status is-interactive
    # Commands to run in interactive sessions can go here
end


# fzf
function fcd
    cd (begin; find ~/Developer/onramp -maxdepth 1 -type d; find ~/Developer/jdq -maxdepth 1 -type d; find ~/Developer/ocaml -maxdepth 1 -type d; end | fzf)
    commandline -f repaint  # Force Fish to repaint the prompt after cd
end


bind \cf fcd



# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/Users/0x6a6471/.opam/opam-init/init.fish' && source '/Users/0x6a6471/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration
