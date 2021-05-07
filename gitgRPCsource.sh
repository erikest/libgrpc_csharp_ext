#!/bin/bash

git clone -b v1.36.4 https://github.com/grpc/grpc
cd grpc
git submodule update --init
