#!/bin/sh

cat /dev/zero > /zero.bin 2> /dev/null || true
sync
rm /zero.bin
