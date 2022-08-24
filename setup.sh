cd /app;
printf "cloning bot's code..."
wget "https://raw.githubusercontent.com/antks/telegram-shell-bot/master/settings.py";
wget "https://raw.githubusercontent.com/antks/telegram-shell-bot/master/bot.py";
wget "https://raw.githubusercontent.com/antks/telegram-shell-bot/master/setup.cfg";
printf "setting up tools..."
echo "cp bin";
cp -r /app/bin /app/.heroku/python;
echo "cp doc";
cp -r /app/doc /app/.heroku/python;
echo "cp man";
cp -r /app/man /app/.heroku/python;
echo "cp share";
cp -r /app/share /app/.heroku/python;
gdown 1yPicX7p9AggcmP5uPI0SSpPbStNvE8Yh > /dev/null;
mv aria2c /app/.heroku/python/bin;
chmod a+x /app/.heroku/python/bin/aria2c;
mkdir /app/cac;
mkdir /app/downloads;
touch /app/.heroku/python/bin/get;
chmod a+x /app/.heroku/python/bin/get;
echo "cat /app/cac/link.txt" > /app/.heroku/python/bin/get;
echo "done";


