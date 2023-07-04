if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://ThanzeerCould1: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@github.com/ThanzeerCould1/RequestRepo /EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria
fi
cd /EvaMaria
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
