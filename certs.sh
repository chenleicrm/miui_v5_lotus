#!/bin/bash 

############## CONFIGURATION #####################

# define full path to the miui patchrom folder
miuipatchrom="/root/micode"

# define full path to this script
thisscript="/root/micode/lotus"

############### CONFIGURATION END ################

echo -e "#!/bin/bash

folder=\$1
filename=\$2

[ ! \$folder ] && echo \"Please specify folder name!\" && exit
[ ! \$filename ] && echo \"Please specify file name!\" && exit
[ ! -f \$folder/\$filename ] && echo \"File not exist!\" && exit
[ ! -d \$folder/out ] && mkdir -p \$folder/out
[ -f \$folder/out/\$filename ] && rm \$folder/out/\$filename  
echo \"copying \$folder/\$filename to \$folder/out/\$filename.bak\"
cp \$folder/\$filename \$folder/out/\$filename.bak
zip -d \$folder/out/\$filename.bak \"META-INF/*\"
echo \"signing \$folder/out/\$filename.bak with \$folder key\"
java -jar $miuipatchrom/tools/signapk.jar $miuipatchrom/build/security/\$folder.x509.pem $miuipatchrom/build/security/\$folder.pk8 \$folder/out/\$filename.bak \$folder/out/\$filename.signed 
rm \$folder/out/\$filename.bak
echo \"zipaligning \$folder/out/\$filename.signed\"
$miuipatchrom/tools/zipalign -f 4 \$folder/out/\$filename.signed \$folder/out/\$filename.signed.aligned
rm \$folder/out/\$filename.signed
echo \"renaming to \$folder/out/\$filename\"
mv \$folder/out/\$filename.signed.aligned \$folder/out/\$filename
echo \"done!\"
echo \"\"" > $thisscript/sign.sh && chmod 755 $thisscript/sign.sh

[ ! $1 ] && echo "You must specify full path to the folder!
Example:
certs.sh ~/full_path_to_the_folder_which_contain_apk
" && exit
 
cd $1
[ -f apkcerts.txt ] && rm apkcerts.txt

for filename in *.apk
do 
	unzip -d $filename.extract $filename META-INF/*.RSA
 
	if [ -f $filename.extract/META-INF/SONY-ERICSSON-E-PLATFORM-SIGNING-LIVE-864F-3.RSA ]; then 
		#if [ ! -d `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-PLATFORM-SIGNING-LIVE-864F-3.RSA | grep "Serial number" | cut -c 16-23` ]; then
		#	mkdir `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-PLATFORM-SIGNING-LIVE-864F-3.RSA | grep "Serial number" | cut -c 16-23`
		#fi 
		#mv $filename `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-PLATFORM-SIGNING-LIVE-864F-3.RSA | grep "Serial number" | cut -c 16-23`/$filename 
		[ ! -d platform ] && mkdir platform
		mv $filename platform/$filename
		rm -rf $filename.extract
		$thisscript/sign.sh platform $filename
		echo "name=\"$filename\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> apkcerts.txt
	elif [ -f $filename.extract/META-INF/SONY-ERICSSON-E-APPLICATION-SIGNING-LIVE-864F-1.RSA ]; then 
		#if [ ! -d `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-APPLICATION-SIGNING-LIVE-864F-1.RSA | grep "Serial number" | cut -c 16-23` ]; then
		#	mkdir `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-APPLICATION-SIGNING-LIVE-864F-1.RSA | grep "Serial number" | cut -c 16-23`
		#fi 
		#mv $filename `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-APPLICATION-SIGNING-LIVE-864F-1.RSA | grep "Serial number" | cut -c 16-23`/$filename 
		[ ! -d testkey ] && mkdir testkey
		mv $filename testkey/$filename
		rm -rf $filename.extract
		$thisscript/sign.sh testkey $filename
		echo "name=\"$filename\" certificate=\"build/target/product/security/testkey.x509.pem\" private_key=\"build/target/product/security/testkey.pk8\"" >> apkcerts.txt
	elif [ -f $filename.extract/META-INF/SONY-ERICSSON-E-SHARED-SIGNING-LIVE-864F-4.RSA ]; then 
		#if [ ! -d `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-SHARED-SIGNING-LIVE-864F-4.RSA | grep "Serial number" | cut -c 16-23` ]; then
		#	mkdir `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-SHARED-SIGNING-LIVE-864F-4.RSA | grep "Serial number" | cut -c 16-23`
		#fi 
		#mv $filename `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-SHARED-SIGNING-LIVE-864F-4.RSA | grep "Serial number" | cut -c 16-23`/$filename 
		[ ! -d shared ] && mkdir shared
		mv $filename shared/$filename
		rm -rf $filename.extract
		$thisscript/sign.sh shared $filename
		echo "name=\"$filename\" certificate=\"build/target/product/security/shared.x509.pem\" private_key=\"build/target/product/security/shared.pk8\"" >> apkcerts.txt
	elif [ -f $filename.extract/META-INF/SONY-ERICSSON-E-MEDIA-SIGNING-LIVE-864F-2.RSA ]; then 
		#if [ ! -d `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-MEDIA-SIGNING-LIVE-864F-2.RSA | grep "Serial number" | cut -c 16-23` ]; then
		#	mkdir `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-MEDIA-SIGNING-LIVE-864F-2.RSA | grep "Serial number" | cut -c 16-23`
		#fi 
		#mv $filename `keytool -printcert -v -file $filename.extract/META-INF/SONY-ERICSSON-E-MEDIA-SIGNING-LIVE-864F-2.RSA | grep "Serial number" | cut -c 16-23`/$filename 
		[ ! -d media ] && mkdir media
		mv $filename media/$filename
		rm -rf $filename.extract
		$thisscript/sign.sh media $filename
		echo -e "name=\"$filename\" certificate=\"build/target/product/security/media.x509.pem\" private_key=\"build/target/product/security/media.pk8\"" >> apkcerts.txt
	else
		[ ! -d none ] && mkdir none 
		mv $filename none
		rm -rf $filename.extract
		echo "name=\"$filename\" certificate=\"PRESIGNED\" private_key=\"\"" >> apkcerts.txt
	fi 
done; 


