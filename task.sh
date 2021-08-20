#!/bin/bash

arr[0]="bot: 👋 Hello Github!"
arr[1]="bot: 🥳 Yeayyy!"
arr[2]="bot: 😬 Working from github."
arr[3]="bot: 👨‍💻 Work, work, work!"
arr[4]="bot: 😪 Hufft..."
arr[5]="bot: 😎 I'm working for my master!"
arr[6]="bot: 🙄 Running task, again."
arr[7]="bot: 👻 Thanks master."
arr[8]="bot: ✔ I'm online on Github."
arr[9]="bot: ✔ I'm online on Gitlab too!"
arr[10]="bot: 🎶 Now the music is playing!"
arr[11]="bot: ✘ Oh, there's an error."
arr[12]="bot: 🙏 I hope today is better than before."

rand=$[$RANDOM % ${#arr[@]}]
d=`date '+%Y-%m-%dT%H:%M:%SZ'`

echo "## 🤔 LAST UPDATED AT: ${d}" > update.md

git config --local user.email "officialputuid@hack.id"
git config --local user.name "officialputuid"
git commit -am "${arr[$rand]} (at ${d})"
