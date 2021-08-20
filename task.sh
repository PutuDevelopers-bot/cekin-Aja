# trigger
#!/bin/bash

arr[0]="bot: Hello Github!"
arr[1]="bot: ✔ Login Sukses!"
arr[2]="bot: ✘ Login Gagal!"

rand=$[$RANDOM % ${#arr[@]}]
d=`date '+%Y-%m-%dT%H:%M:%SZ'`

echo "## cekin-Aja: ${d} (current)" > update.md

git config --local user.email "88973775+PutuDevelopers-bot@users.noreply.github.com"
git config --local user.name "PutuDevelopers-bot"
git commit -am "${arr[$rand]} (at ${d})"
