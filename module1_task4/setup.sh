#!/bin/bash
apt-get update && apt-get install -y hugo make
sudo snap install hugo
sudo apt update
sudo apt install make
hugo server
