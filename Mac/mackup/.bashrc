#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
if [ -d $HOME/.sdkman ]
then
    export SDKMAN_DIR="$HOME/.sdkman"
    [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# anyenv
if [ -f /usr/local/bin/anyenv ]
then
    eval "$(anyenv init -)"
    
    # avoid brew warning
    alias brew="env PATH=\"${PATH/$(anyenv root)\/envs\/*env\/shims:/}\" brew"
fi

# brew git completion
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]
then
    source /usr/local/etc/bash_completion.d/git-prompt.sh
    source /usr/local/etc/bash_completion.d/git-completion.bash
    GIT_PS1_SHOWDIRTYSTATE=true
    export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
fi