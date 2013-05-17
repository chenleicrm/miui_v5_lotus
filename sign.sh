#!/bin/bash

folder=$1
filename=$2

[ ! $folder ] && echo "Please specify folder name!" && exit
[ ! $filename ] && echo "Please specify file name!" && exit
[ ! -f $folder/$filename ] && echo "File not exist!" && exit
[ ! -d $folder/out ] && mkdir -p $folder/out
[ -f $folder/out/$filename ] && rm $folder/out/$filename  
echo "copying $folder/$filename to $folder/out/$filename.bak"
cp $folder/$filename $folder/out/$filename.bak
zip -d $folder/out/$filename.bak "META-INF/*"
echo "signing $folder/out/$filename.bak with $folder key"
java -jar /root/miui_sony_xperia/tools/signapk.jar /root/miui_sony_xperia/build/security/$folder.x509.pem /root/miui_sony_xperia/build/security/$folder.pk8 $folder/out/$filename.bak $folder/out/$filename.signed 
rm $folder/out/$filename.bak
echo "zipaligning $folder/out/$filename.signed"
/root/miui_sony_xperia/tools/zipalign -f 4 $folder/out/$filename.signed $folder/out/$filename.signed.aligned
rm $folder/out/$filename.signed
echo "renaming to $folder/out/$filename"
mv $folder/out/$filename.signed.aligned $folder/out/$filename
echo "done!"
echo ""
