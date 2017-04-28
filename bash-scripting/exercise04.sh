# Q:
# Write a Bash script which will print tomorrows date. (Hint: use the command date)
# A:
tomorrowsDate=$(( date + 86400 ))
echo $tomorrowsDate
