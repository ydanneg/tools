export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# ALIASES
alias home='cd'
alias src='cd ~/src/'
alias ll='ls -al'
alias 'cd..'='cd ..'
alias 'pico'='nano'

# ANDROID
export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$PATH

# JAVA
alias j17="export JAVA_HOME=`/usr/libexec/java_home -v 17`; java -version"
alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
j17

# NVM, NODE
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NODE_OPTIONS=--max-old-space-size=9192
nvm use 14

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# GCLOUD
source /usr/local/etc/bash_completion.d/google-cloud-sdk
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export GOOGLE_APPLICATION_CREDENTIALS=$HOME/google-credentials.json

# KUBE
source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k
export KUBE_PS1_SYMBOL_ENABLE=false
export KUBE_PS1_CTX_COLOR=green
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
export PS1='[${PWD/#"$HOME"/~}]@$(kube_ps1)\$ '
alias kn=kubens
alias kx=kubectx
alias kon=kubeon
alias koff=kubeoff
kon
export KUBE_EDITOR=pico

# DOCKER
source /usr/local/etc/bash_completion.d/docker
source /usr/local/etc/bash_completion.d/docker-compose


export PATH="/usr/local/opt/openssl@3/bin:$PATH"
