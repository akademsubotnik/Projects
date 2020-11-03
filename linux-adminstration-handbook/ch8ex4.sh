Write a script that keeps your startup files (~/.[a-z]*) synchronized among all the machines on which you have an account.  Schedule this script to run regularly from cron .  (Is it safe to blindly copy every file whose name starts with a dot? Should files being replaced on the destination machines be backup before they are overwritten)?

#Assume LAN = 192.168.1.2 > 10, .11 is master
for i in {2..10}
do
if [ -d “192.168.1.$i:/home/greg” ]
then 
rsync -r 192.168.1.$i/home/greg/.[a-z]* 192.168.11/home/master-greg/startup-scrips
done
