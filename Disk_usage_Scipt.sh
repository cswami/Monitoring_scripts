#!/bin/sh
#================================
#Auther : Chandrashekhar Swami
#================================

folder_path()
{
if [ -z "$2" ]
then
echo -e "\e[0;31m Please enter path\e[0m "
else
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  1. The largest 10 files \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m ";find $2 -type f -print0 | xargs -0 du | sort -n | tail -10 | cut -f2 | xargs -I{} du -sh {}   2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  2. The largest 10 directories: \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; find $2 -type d -print0 | xargs -0 du | sort -n | tail -10 | cut -f2 | xargs -I{} du -sh {}   2>/dev/null ; echo -e "\e[0m";
echo -e "\e[0;31m************************************** \e[0m "
echo "Thank you for using this script © Chandrashekhar Swami"
exit 1;


fi
}


account_usage()
{
#d1=$1
Dyu=`cat /etc/trueuserdomains |awk {'print $2'} |grep -w $2 2>&1 |wc -l`

if [ -z "$2" ] || [ "$Dyu" == 0 ]
then

echo -e "\e[0;31m Incorrect account name\e[0m "

exit 1;

else
echo -e " \e[0;36m Account Disk usage :$2 \e[0m \n "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  1. /home/$2/public_html/error* Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; du -sch /home/$2/public_html/error* 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  2. /home/$2/public_html/*/error* Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; du -sch /home/$2/public_html/*/error* 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  3. /home/$2/*.tar.gz  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; ls -lacths /home/$2/*.tar.gz  2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  4. /home/$2/*.zip  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; ls -lacths /home/$2/*.zip  2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  5. /home/$2/backup*  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; du -csh  /home/$2/backup* 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  6. ls -ld /home/$2/public_html_*  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; ls -ld /home/$2/public_html_*   2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  7. /home/$2/public_html_*  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; du -csh  /home/$2/public_html_*   2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  8. du -csh  /home/$2/softaculous_backups Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; du -sch /home/$2/softaculous_backups  2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  9. ls -l /home/$2/*.sql  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; ls -lacths /home/$2/*.sql   2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  10. The largest 10 files \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; cd /home/$2 ; find . -type f -print0 | xargs -0 du | sort -n | tail -10 | cut -f2 | xargs -I{} du -sh {}   2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  11. The largest 10 directories: \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; cd /home/$2 ; find . -type d -print0 | xargs -0 du | sort -n | tail -10 | cut -f2 | xargs -I{} du -sh {}   2>/dev/null ; echo -e "\e[0m";
echo -e "\e[0;31m************************************** \e[0m "
echo "Thank you for using this script © Chandrashekhar Swami"
exit 1;

fi
}

#=======================1.===============================


serverd_usage()
{
echo -e " \e[0;36m Server [ $IP ] Disk usage \e[0m \n "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  1. /home/*/public_html/error* Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; du -sch /home/*/public_html/error* 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  2. /home/*/public_html/*/error* Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; du -sch /home/*/public_html/*/error* 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  3. /home*/*.tar.gz  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; ls -lacths /home*/*.tar.gz  2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  4. /home*/*/*.tar.gz  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; ls -lacths  /home*/*/*.tar.gz 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  5. /home*/*/*.zip  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; ls -lacths /home*/*/*.zip  2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  6. /home*/*/backup*  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; du -csh  /home*/*/backup* 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  7. ls -ld /home*/*/public_html_*  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; ls -ld /home*/*/public_html_*   2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  8. /home*/*/public_html_*  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; du -csh  /home*/*/public_html_*   2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  9. du -csh  /home*/*/softaculous_backups Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; du -sch /home*/*/softaculous_backups  2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[0;33m  10. ls -l /home/*/*.sql  Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m "; ls -lacths /home/*/*.sql   2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e " \e[0;33m  11. /backup Disk Usage \e[0m  "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m \t \t \t"; du -sch /backup/* 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e " \e[0;31m************************************** \e[0m \n "
echo -e " \e[0;33m  12. /home/backup/* Disk Usage \e[0m \n "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m"; du -sch /home/backup/* 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e " \e[0;33m  13. /var/log/* Disk Usage\e[0m \n "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m"; du -sch /var/log/* 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e " \e[0;33m  14. /var/asl/* Disk Usage \e[0m \n "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m"; du -sch /var/asl/* 2>/dev/null; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e " \e[0;33m  15. /usr/local/apache/logs/* Disk Usage \e[0m \n "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m"; du -sch /usr/local/apache/logs/* 2>/dev/null; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e " \e[0;33m  16. /usr/local/cpanel/logs/* Disk Usage \e[0m \n "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m"; du -sch  /usr/local/cpanel/logs/* 2>/dev/null ; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e " \e[0;33m  17. /var/spool/* Disk Usage \e[0m \n "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m"; du -sch /var/spool/* 2>/dev/null; echo -e "\e[0m";

echo -e "\e[0;36m Press Enter to continue .... \e[0m "
read ent

echo -e "\e[0;31m************************************** \e[0m "
echo -e " \e[0;33m  18. /home/dailybackup/* Disk Usage \e[0m \n "
echo -e "\e[0;31m************************************** \e[0m "
echo -e "\e[32m"; du -sch /home/dailybackup/* 2>/dev/null; echo -e "\e[0m";
echo -e "\e[0;31m************************************** \e[0m "
echo "Thank you for using this script © Chandrashekhar Swami"
exit 1;

}



#==============Main function===================
IP=$(hostname -i)
  case $1 in
        --serverd)
              serverd_usage
                ;;
        --accountd)

               account_usage "$@"
                break
                ;;
         --fpath)
                folder_path "$@"

                break
                ;;
           --help)
		 echo -e " \e[0;31m --serverd\e[0m"" \e[0;36m \t:Server Disk usage\e[0m"
		 echo -e " \e[0;31m --accountd \e[0m"" \e[0;36m \t:account Disk usage \e[0m"
		 echo -e " \e[0;31m --fpath \e[0m"" \e[0;36m \t:Display Top 10 size of files and folders \e[0m"
		 echo -e " \e[0;31m --help \e[0m"" \e[0;36m \t:Help menu \e[0m"

                break
                ;;

        *)
               echo -e " \e[0;31m Incorrect option \e[0m \n "

                ;;
  esac


