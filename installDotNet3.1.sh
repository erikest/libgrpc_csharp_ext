#!/bin/bash

#Dependencies
sudo apt-get install curl libunwind8 gettext

#SDK needed to compile
wget https://download.visualstudio.microsoft.com/download/pr/d52fa156-1555-41d5-a5eb-234305fbd470/173cddb039d613c8f007c9f74371f8bb/dotnet-sdk-3.1.101-linux-arm.tar.gz

#Runtim needed to run apps
wget https://download.visualstudio.microsoft.com/download/pr/da60c9fc-c329-42d6-afaf-b8ef2bbadcf3/14655b5928319349e78da3327874592a/aspnetcore-runtime-3.1.1-linux-arm.tar.gz

#Make a home and extract the tars
mkdir -p $HOME/dotnet
tar zxf dotnet-sdk-3.1.101-linux-arm.tar.gz -C $HOME/dotnet
tar zxf aspnetcore-runtime-3.1.1-linux-arm.tar.gz -C $HOME/dotnet

#Set environment variables, including the path so the dotnet cli can be found
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet

#push the path to the profile so it 'sticks' after restarts
sudo echo "export DOTNET_ROOT=$HOME/dotnet" >> /etc/profile
sudo echo "export PATH=$PATH:/$HOME/dotnet" >> /etc/profile


