#!/bin/bash
apt-get update && apt-get install -y hugo make
sudo brew install hugo
sudo apt update
sudo apt install make
make build