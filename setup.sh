if [ -z "$(ls -A /app/check/)" ]; then
printf "FILES";
printf "setting up tools...";
cd /app/bin;
wget "https://www.7-zip.org/a/7z2201-linux-x64.tar.xz";
tar -xf 7z2201-linux-x64.tar.xz;
mv 7zz 7z;
rm 7z2201-linux-x64.tar.xz;
echo "cp bin";
chmod a+x /app/bin/cackeep
touch /app/.heroku/python/bin/tkroot
echo "fakechroot fakeroot chroot /app/root" > /app/.heroku/python/bin/tkroot
chmod a+x /app/.heroku/python/bin/tkroot
cp -r /app/bin /app/.heroku/python;
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
rm /app/gcloud.tar.gz
echo "ssh setting up..."
gdown 1hBOyg_Be10GUk-_u_WGxDp_iu_DbzKPS;
tar -xf .ssh.tar.xz;
rm .ssh.tar.xz;
mkdir /app/check;
touch /app/check/checkapp
gdown 1eJbyKb_0fq9q_yPn_NH_Z1KYTnAvut8S;
tar -xf screen.xz;
mv screen /app/.heroku/python/bin;
rm /app/screen.xz
gdown 1ANC7HQBsOL2h9k3AwK13fEMZWXBvWgg4;
tar -xf tmux.xz;
mv tmux /app/.heroku/python/bin;
rm /app/tmux.xz
tmux new-session -d -s gshell 'cackeep'
gdown 1F5IZMe8lBxJwPDtvE0I5BRuc4tvMs4TE
tar -xf fakechroot.xz
rm fakechroot.xz 
gdown 1gImnET4r05A_3-79a0mbwZq7h9OA_dNP
cp libfakechroot.so /app/fakechroot
rm libfakechroot.so
gdown 1azvMDpDVAuoPLI_vY5hycx22Z1c95CB6
tar -xf root.xz;
rm root.xz;


echo "done";
else 
echo "here we go ";
fi

