#!/bin/bash

###
#Install Tool Chain
###

sudo apt-get install build-essential autoconf libtool pkg-config
sudo apt-get install libgflags-dev libgtest-dev
sudo apt-get install clang libc++-dev
sudo apt-get install cmake

###
#Get gRPC Source Code
###

git clone -b $(curl -L https://grpc.io/release) https://github.com/grpc/grpc
cd grpc
git submodule update --init


###
#Compile libgrpc_csharp_ext target
###

set -ex

#intended to be run from the repository root
cd grpc/

#create location for build files
mkdir -p cmake/build
cd cmake/build

#setup the build files
cmake -DgRPC_BUILD_TESTS=OFF -DCMAKE_BUILD_TYPE="${MSBUILD_CONFIG}" ../..

#compile libgrpc_csharp_ext.so 
make -j4 grpc_csharp_ext

#Copy the file back to repository root and rename it to what gRPC.Core currently looks for
cp libgrpc_csharp_ext.so ../../../libgrpc_csharp_ext.x86.so
