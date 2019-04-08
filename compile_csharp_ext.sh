#!/bin/bash

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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

cp libgrpc_csharp_ext.so ../../../libgrpc_csharp_ext.x86.so
