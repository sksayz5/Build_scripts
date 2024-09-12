#!/bin/bash

# Removals
rm -rf .repo/local_manifests

# Initialize repo with specified manifest
repo init --depth=1 -u https://github.com/ProjectBlaze/manifest -b 15

# Clone local_manifests repository
git clone https://github.com/sksayz5/local_manifest.git --depth 1 -b main .repo/local_manifests

# Sync the repositories
/opt/crave/resync.sh


export BUILD_USERNAME=shravan
export BUILD_HOSTNAME=crave

# Set up build environment
source build/envsetup.sh
lunch blaze_RMX1901-ap3a-user
make install clean
make bacon
