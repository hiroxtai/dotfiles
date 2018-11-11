export PATH=/usr/local/bin:$PATH

# Android SDK
if [ -d $HOME/Library/Android/sdk ]
then
    export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
    export PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/platform-tools
fi

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
