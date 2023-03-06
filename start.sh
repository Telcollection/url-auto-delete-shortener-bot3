if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Telcollection/url-auto-delete-shortener-bot3.git /url-auto-delete-shortener-bot3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /url-auto-delete-shortener-bot3
fi
cd /url-auto-delete-shortener-bot3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
