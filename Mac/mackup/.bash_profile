# Android SDK
if [ -d $HOME/Library/Android/sdk ]
then
    export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
    export PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/platform-tools
fi

# Flutter SDK
if [ -d $HOME/Library/Flutter/sdk ]
then
    export FLUTTER_SDK_ROOT=$HOME/Library/Flutter/sdk
    export PATH=$PATH:$FLUTTER_SDK_ROOT/bin
fi

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
