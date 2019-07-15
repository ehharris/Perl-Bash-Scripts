#! /bin/bash
{
date
ps -Af | grep -v '^root' | wc -l | awk '{printf "Number of Processes: %s\n", $1 }'
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
who --count | awk 'FS=="="{printf "Users Logged in: %s\n", $1 }'
users | wc -w | awk '{printf "Number of Users: %s\n\n", $0}'
} >> /s/bach/c/under/ehharris/ct320/output.txt
