

This soft makes inventory computers(serial numbers of your Motherboard, memory, disk, monitor,UPS) of your domain over powershell script and show inventory table over bash script on linux and web server




1) add this file "hwinfo.ps1" to your active directory domain policy
as shown on image(in wiki) (change output path as you need) and allow powershell scripts to run(this script write info about your computer  from autorun to linux smb share)

2) add files inventory2.sh(change IMPORT var as you need) and tblmap to /usr/local/bin of your linux machine(as webserver)

3) add inventory2.sh to crontab like this 
" */10    *       *       *       *       /usr/local/bin/inventory2.sh "
this script make inventarization table

4) create git repo in your IMPORT directory if you want to have history by "git init" command


result shown in file i.html
