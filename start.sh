if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AK4111/AK_AUTO_FITER.git /AK_AUTO_FITER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AK_AUTO_FITER
fi
cd /AK_AUTO_FITER
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
