#!/bin/sh

mkdir -p root/modules

echo "Pulling proprietary kernel modules ..."
for FILE in `cat proprietary-modules.txt | grep -v ^# | grep -v ^$`; do
    BASENAME=`basename $FILE`
    adb pull $FILE recovery/root/modules/$BASENAME
    adb pull $FILE root/modules/$BASENAME
done
