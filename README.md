#libgrpc_csharp_ext

##Overview

These scripts install the necessary tools to compile libgrpc_csharp_ext.

###Instructions

1. mkdir ~/libgrpc_csharp_ext (or whatever root directory you want)
2. cd ~/libgrpc_csharp_ext
2. git clone https://github.com/erikest/libgrpc_csharp_ext
3. chmod +x installToolChain.sh
4. sudo ./installToolChain.sh
5. chmod +x gitgRPCsource.sh
6. ./gitgRPCsource.sh
7. chmod +x compile_csharp_ext.sh
8. ./compile_csharp_ext.sh

###Notes

The install tool chain script is distilled from the grpc repository (BUILD.md)
The compile script is scrapped together from the grpc repository build scripts and those could change.
