#!/bin/bash

# Install Utilities
pacman -S --noconfirm git

# Install OpenJDK 8
pacman -S --noconfirm jdk8-openjdk

# Clone Java RMI Project
cd /home/vagrant
git clone https://github.com/obedmr/distributed_systems.git
cd distributed_systems/src

# Compile Server
javac -d ./ example/hello/*.java

# Starting RMI Registry
rmiregistry &

# Starting Server
java -cp ./ -Djava.rmi.server.codebase=file:./ -Djava.rmi.server.hostname=10.0.0.10 example.hello.Server &
