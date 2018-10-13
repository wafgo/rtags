#!/bin/bash

for generator in ZIP TBZ2; do
    cmake . -DRTAGS_ENABLE_DEV_OPTIONS=1 $CMAKE_ARGS -DCPACK_GENERATOR=$generator || exit 1
    make package_source || exit 1
done

exit 0
