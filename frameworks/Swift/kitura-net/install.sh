#!/bin/bash

# Install swiftenv, which will take care of installing the appropriate Swift runtime
git clone https://github.com/kylef/swiftenv $TROOT/.swiftenv
export SWIFTENV_ROOT="$TROOT/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"
eval "$(swiftenv init -)"

# Install Swift runtime
swiftenv install

