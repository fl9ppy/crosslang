#!/bin/bash

# Check for OS type
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    sudo apt-get update

    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

    sudo apt-get install -y gcc

    sudo apt-get install -y default-jdk

    sudo apt-get install -y ruby

    sudo apt-get install -y lua5.3

    sudo apt-get install -y golang

    sudo apt-get install -y nodejs npm

    sudo apt-get install -y php

    sudo apt-get install -y perl

    sudo apt-get install -y scala

    sudo apt-get install -y default-jre
    wget https://github.com/JetBrains/kotlin/releases/download/v1.5.21/kotlin-compiler-1.5.21.zip
    unzip kotlin-compiler-1.5.21.zip
    sudo mv kotlinc /usr/local/kotlinc
    export PATH=/usr/local/kotlinc/bin:"${PATH}"

elif [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    # Install Homebrew if not installed
    if ! command -v brew &> /dev/null; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    brew install rust
    brew install gcc
    brew install openjdk
    brew install ruby
    brew install lua
    brew install go
    brew install node
    brew install php
    brew install perl
    brew install scala
    brew install kotlin

else
    echo "Unsupported OS. Please install the necessary compilers and interpreters manually."
    exit 1
fi

echo "Installation complete. Please ensure all compilers and interpreters are in your PATH."

