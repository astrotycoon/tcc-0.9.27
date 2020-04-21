#!/usr/bin/env bash

OUTPUT_DIRECTORY=../tcc-woboq
DATA_DIRECTORY=/usr/local/share/woboq/data
BUILD_DIRECTORY=$PWD
SOURCE_DIRECTORY=$PWD
VERSION="0.9.27"

codebrowser_generator -color -a -b $BUILD_DIRECTORY -o $OUTPUT_DIRECTORY -p tcc:$SOURCE_DIRECTORY:$VERSION
codebrowser_indexgenerator $OUTPUT_DIRECTORY
cp -rfd $DATA_DIRECTORY $OUTPUT_DIRECTORY
