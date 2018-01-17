#!/bin/bash

# Dependency on PostgreSQL database
fw_depends postgresql swift4

# Build Kitura
#swift package clean
swift build -c release -Xswiftc -DGCD_ASYNCH --build-path=build_gcd

# Execute Kitura (reads DBHOST and DBPORT environment variables)
#export DBPORT="5432"
build_gcd/release/TechEmpowerMongoKitten &
