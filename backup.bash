#!/bin/bash
# Developer : Hamdy Abou El Anein
echo "This is the backup of the home folder "> backup.log ; date +"%Y-%m-%d %T" >> backup.log
sudo rsync -vraPz --exclude=".*" --exclude=".*/" --max-size=500m -e ssh /home/ hamdyaea@192.168.1.34:/home/hamdyaea/backup_hamdy >> backup.log
cat backup.log|mailx -v -s "Backup terminé" hamdy.aea@protonmail.com
