if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/H4ell0/Forward-Bot.git /Forward-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Forward-Bot
fi
cd /Forward-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot This May Take Time Depending On Database Size..."
python3 bot.py
