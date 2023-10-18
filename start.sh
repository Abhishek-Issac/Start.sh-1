if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://Abhishek-issac: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@github.com/Abhishek-issac/TigerShroffv4.git /TigerShroffv4
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TigerShroffv4
fi
cd /TigerShroffv4
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
