#!/bin/bash

brew update && brew install \
    bash \
    bash-completion \
    coreutils \
    curl \
    wget \
    nano \
    git \
    gnutls \
    gradle \
    helm \
    kube-ps1 \
    kubectx \
    maven \
    midnight-commander \
    openjdk@8 \
    openjdk@11 \
    openjdk@17 \
    openssl@3 \
    python@3 \
    tree \
    sevenzip \
    nvm
&& brew install --cask \
    atom \
    docker \
    google-cloud-sdk \
    virtualbox \
    jetbrains-toolbox \
    ;

gcloud -q components install gke-gcloud-auth-plugin

nvm install --lts