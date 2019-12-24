

This soft makes inventory computers(serial numbers of your Motherboard, memory, disk, monitor,UPS) of your domain over powershell script and show inventory table over bash script on linux and web server




1) add this file "hwinfo.ps1" to your active directory domain policy
as shown on image (change output path as you need)

2) add files inventory2.sh(change IMPORT var as you need) and tblmap to /usr/local/bin

3) add inventory2.sh to crontab like this 
" */10    *       *       *       *       /usr/local/bin/inventory2.sh "


result shown in file i.html
