#!/usr/bin/env bash

a=$("The Disk utilization is $(df -h | head -n 2 | grep vdb |awk '{print $5}')")
#a  =  df -h | head -n 2 | grep vdb |awk '{print $5}'

##a= $(df -h  | grep "/dev/vdb" | head -n 1| awk '{print $5}')


#echo "valor de a $a"
number= "${a:0:2}"

#echo "The Disk utilization is $number %"

echo "Executed job at  $(date -u)" >>/home/perezchavez/logs.txt

cat > email.txt << EOF
Filesystem  has breached 85% threshold utilization, and admin attention is needed

$(df -h | head -n 2)

Scan date is $(date -u)

EOF


if  (($number >  12));
then
mail -s 'test' erickpece1466@gmail.com < email.txt
echo "Email sent"
else
echo "The Disk utilization is OK"

fi