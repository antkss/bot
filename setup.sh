CHECK=$(cat /app/checkapp)
if [ $CHECK -eq 1 ] ;
then 
printf "FILES";
printf "setting up tools...";
cd /app/;
wget https://raw.githubusercontent.com/antks/bottom/master/ssh.sh;
bash ssh.sh;
cd /app/bin;
wget "https://www.7-zip.org/a/7z2201-linux-x64.tar.xz";
tar -xf 7z2201-linux-x64.tar.xz;
mv 7zz 7z;
rm 7z2201-linux-x64.tar.xz;
echo "cp bin";
cp -r /app/bin /app/.heroku/python;
echo "cp doc";
cp -r /app/doc /app/.heroku/python;
echo "cp man";
cp -r /app/man /app/.heroku/python;
echo "cp share";
cp -r /app/share /app/.heroku/python;
cd /app;
gdown 1yPicX7p9AggcmP5uPI0SSpPbStNvE8Yh > /dev/null;
mv aria2c /app/.heroku/python/bin;
chmod a+x /app/.heroku/python/bin/aria2c;
mkdir /app/cac;
mkdir /app/downloads;
touch /app/.heroku/python/bin/get;
chmod a+x /app/.heroku/python/bin/get;
echo "cat /app/cac/link.txt" > /app/.heroku/python/bin/get;
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-400.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-cli-400.0.0-linux-x86_64.tar.gz;
rm /app/google-cloud-cli-400.0.0-linux-x86_64.tar.gz;
gdown 1fxA46EysgPar5gY4vK8sJSZWWK-cXM1I
tar -xf gcloud.tar.gz;
mkdir /app/.config
mv gcloud /app/.config
echo "ssh setting up..."
gdown 1hBOyg_Be10GUk-_u_WGxDp_iu_DbzKPS;
tar -xf .ssh.tar.xz;
rm .ssh.tar.xz;
echo 1>/app/checkapp
echo "done";
else 
echo "here we go ";
fi

