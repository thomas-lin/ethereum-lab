#!/bin/bash

echo "Installing required"
sudo apt-get update
sudo apt-get install -y git g++

echo "Installing Nodejs..."
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Installing Golang..."
sudo apt-get install -y golang-go

echo "Installing git, node"
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get -y install ethereum