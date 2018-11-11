# anyenv
if [ -d $HOME/.anyenv ]
then
    export PATH="$PATH:$HOME/.anyenv/bin"
    eval "$(anyenv init -)"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"