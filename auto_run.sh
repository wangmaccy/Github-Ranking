#!/bin/sh
# crontab auto run this file
# crontab command:
# 0 12 * * * nohup sh /home/li/code/github/Github-Ranking/auto_run.sh >> /home/li/tmp/Github-Ranking.log 2>&1 &

# show run time
echo -e "\n----------Run Time:----------"
date
cd /c/github/Github-Ranking
git pull
source /c/github/virtualEnv/newenv/Scripts/activate
python save_most_stars_forks.py
git add .
today=`date +"%Y-%m-%d"`
git commit -m "Auto update $today."
git push origin master