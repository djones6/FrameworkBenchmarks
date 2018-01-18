#!/bin/bash

# Dependency on MongoDB database
fw_depends mongodb swift4

# Build Kitura
#swift package clean
swift build -c release

# Execute Kitura (reads DBHOST and DBPORT environment variables)
#export DBPORT="5432"
.build/release/TechEmpowerMongoKitten &
