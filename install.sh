#!/bin/bash

if [$# -eq 0]
then
    echo "Usage: install GECKO_SOURCE_PATH"
fi

GECKO_SOURCE_PATH=$1;

rm -rf $GECKO_SOURCE_PATH:/gfx/angle
mkdir -p $GECKO_SOURCE_PATH:/gfx/angle

cp -r ./[A-Z]* ./{include,src,moz.build} $GECKO_SOURCE_PATH:/gfx/angle