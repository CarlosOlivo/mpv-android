#!/bin/bash -e

## Dependency versions

v_sdk=6609375_latest
v_ndk=r23
v_sdk_build_tools=30.0.2

v_lua=5.2.4
v_harfbuzz=3.0.0
v_fribidi=1.0.11
v_freetype=2-11-0
v_mbedtls=2.27.0

# Build libmpv/ffmpeg from master branch?
b_master=0

# If not, use the pinned commit below instead.
v_libmpv=9ca9066d052acecb5b05369141a76993a753ee1e
v_ffmpeg=e84c83ef982042b4441b517a8f23d8427f2b5494

## Dependency tree
# I would've used a dict but putting arrays in a dict is not a thing

dep_mbedtls=()
dep_dav1d=()
dep_ffmpeg=(mbedtls dav1d)
dep_freetype2=()
dep_fribidi=()
dep_harfbuzz=()
dep_libass=(freetype2 fribidi harfbuzz)
dep_lua=()
dep_mpv=(ffmpeg libass lua)
dep_mpv_android=(mpv)
