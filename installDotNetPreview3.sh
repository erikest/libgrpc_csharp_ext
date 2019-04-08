#!/bin/bash

#Dependencies
sudo apt-get install curl libunwind8 gettext

#SDK needed to compile
wget https://download.visualstudio.microsoft.com/download/pr/a605bd83-8d5a-4418-a851-9e1cfe822c62/944297058797e542601b3e3a89078fca/dotnet-sdk-3.0.100-preview3-010431-linux-arm.tar.gz

#Runtim needed to run apps
wget https://download.visualstudio.microsoft.com/download/pr/44c55f6b-2c22-4823-8e42-2a1140b4cf1f/f901b96aae5b4fcedc4d43235c1db5df/aspnetcore-runtime-3.0.0-preview3-19153-02-linux-arm.tar.gz

#Make a home and extract the tars
mkdir -p $HOME/dotnet
tar zxf dotnet-sdk-3.0.100-preview3-010431-linux-arm.tar.gz -C $HOME/dotnet
tar zxf aspnetcore-runtime-3.0.0-preview3-19153-02-linux-arm.tar.gz -C $HOME/dotnet

#Set environment variables, including the path so the dotnet cli can be found
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet

#push the path to the profile so it 'sticks' after restarts
sudo echo "export DOTNET_ROOT=$HOME/dotnet" >> /etc/profile
sudo echo "export PATH=$PATH:/$HOME/dotnet" >> /etc/profile


