#!/bin/bash

# Install Swift dependencies
sudo apt-get -y install clang-3.8 libicu-dev
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.8 100
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100

# Install swiftenv, which will take care of installing the appropriate Swift runtime
if [ ! -d "$TROOT/.swiftenv" ]; then
  git clone https://github.com/kylef/swiftenv $TROOT/.swiftenv
fi
export SWIFTENV_ROOT="$TROOT/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"
eval "$(swiftenv init -)"

# Install Swift runtime (but it's fine if it is already installed)
swiftenv install || true

# Build Kitura
swift package clean
swift build -c release

# Execute Kitura (reads DBHOST and DBPORT environment variables)
#export DBPORT="5432"
.build/release/TechEmpowerKuery &
