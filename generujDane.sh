ping -c 100 www.google.com | while read endlooop; do echo "$(date +"%T"): $endlooop"; done >> dane
sed -i '1d' dane
cat dane | awk '{print $1,$9}' | sed 's/: time=/ /g' >> poprawioneDane
rm -f dane
tail -n 1 poprawioneDane | wc -c | xargs -I {} truncate poprawioneDane -s -{}
