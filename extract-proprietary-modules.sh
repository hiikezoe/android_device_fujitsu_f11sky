#!/bin/sh

echo "Pulling proprietary kernel modules ..."
for FILE in `cat proprietary-modules.txt | grep -v ^# | grep -v ^$`; do
    BASENAME=`basename $FILE`
    adb pull $FILE recovery/root/modules/$BASENAME
done
