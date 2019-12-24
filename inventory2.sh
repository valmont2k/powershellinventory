#!/bin/bash

IMPORT=/share/Upload/inventory
EXPORT=/var/www/m/inventory2


cd $IMPORT

for f1 in *.csv;
do
data=`cat $f1 |head -n 1|cut -c -11`

month=`echo $data |cut -c -9|cut -c 8-`

curmonth=`date +%m`
#echo "month is $month"
#echo "curmonth is $curmonth"

if [ $month -ne $curmonth ];then

rm $f1

fi
done

rm -f $EXPORT/*
echo "##################################################"
echo "# START TO EXPORT HARDWARE inventory2 INFORMATION #"
echo "##################################################"

rm -f inventory2.html
rm -f /tmp/inventory2.html
echo "<html><head>" >> /tmp/inventory2.html
echo "<meta charset=utf-8>" >> /tmp/inventory2.html
echo "</head><body>" >> /tmp/inventory2.html
#echo "<html><head></head><body>" >> /tmp/inventory2.html
echo "<table border=1" >> /tmp/inventory2.html
echo "<tr><td>computer</td><td>user</td><td>date</td><td>processor</td><td>vendor</td><td>motherboard</td><td>memory GB</td><td>OS</td><td>arch</td><td>OS version</td><td>motherboard</td><td>Motherboard SN</td><td>memory slots</td><td>memory size</td><td>memory vendor</td><td>memory model</td><td>memory SN</td><td>memory fq</td><td>video type</td><td>video size</td><td>video model</td><td>video controller</td><td>disk type</td><td>disk size</td><td>disk SN</td><td>monitor vendor</td><td>monitor model</td><td>monitor SN</td><td>macaddr</td></tr>" >> /tmp/inventory2.html



rm -f /tmp/i.html
rm -f i.html
echo "<html><head>" >> /tmp/i.html
echo "<meta charset=utf-8>" >> /tmp/i.html
echo "</head><body>" >> /tmp/i.html
#echo "<html><head></head><body>" >> /tmp/i.html
echo "<table border=1" >> /tmp/i.html
echo "<tr><td>computer</td><td>user</td><td>date</td><td>processor</td><td>vendor</td><td>motherboard</td><td>motherboard type</td><td>Motherboard SN</td><td>memory size</td><td>memory model</td><td>memory SN</td><td>video size</td><td>video controller</td><td>disk type</td><td>disk SN</td><td>monitor vendor</td><td>monitor model</td><td>monitor SN</td><td>UPS SN</td></tr>" >> /tmp/i.html


for f in *.csv;
do

computer=`echo $f|cut -d "." -f 1`
data=`cat $f |head -n 1|cut -c -11`

user=`cat $f|head -n 2 |tail -n 1`

processor=`cat $f |grep DEV_Win32_Processor -B 1 | /usr/local/bin/tblmap -d ';' -k 'Name'|tail -n +2`
sysvendor=`cat $f |grep DEV_Win32_ComputerSystem -B 1 | /usr/local/bin/tblmap -d ';' -k 'Manufacturer'|tail -n +2`
motherboard=`cat $f |grep DEV_Win32_ComputerSystem -B 1 | /usr/local/bin/tblmap -d ';' -k 'Model'|tail -n +2`
totalphysicalmemory=`cat $f |grep DEV_Win32_ComputerSystem -B 1 | /usr/local/bin/tblmap -d ';' -k 'TotalPhysicalMemory'|tail -n +2`
system=`cat $f |grep DEV_Win32_OperatingSystem -B 1 | /usr/local/bin/tblmap -d ';' -k 'Caption'|tail -n +2`
systemarch=`cat $f |grep DEV_Win32_OperatingSystem -B 1 | /usr/local/bin/tblmap -d ';' -k 'OSArchitecture'|tail -n +2`
systemversion=`cat $f |grep DEV_Win32_OperatingSystem -B 1 | /usr/local/bin/tblmap -d ';' -k 'Version'|tail -n +2`
systemboard=`cat $f |grep DEV_Win32_BaseBoard -B 1 | /usr/local/bin/tblmap -d ';' -k 'Product'|tail -n +2`
systemboardserialnumber=`cat $f |grep DEV_Win32_BaseBoard -B 1 | /usr/local/bin/tblmap -d ';' -k 'SerialNumber'|tail -n +2`

systemmemorydev=`cat $f |grep DEV2_Win32_PhysicalMemory -B 1 | /usr/local/bin/tblmap -d ';' -k 'DeviceLocator'|tail -n +2`
systemmemorysize=`cat $f |grep DEV2_Win32_PhysicalMemory -B 1 | /usr/local/bin/tblmap -d ';' -k 'Capacity'|tail -n +2`
systemmemorymanufacter=`cat $f |grep DEV2_Win32_PhysicalMemory -B 1 | /usr/local/bin/tblmap -d ';' -k 'Manufacturer'|tail -n +2`
systemmemorypartnumber=`cat $f |grep DEV2_Win32_PhysicalMemory -B 1 | /usr/local/bin/tblmap -d ';' -k 'PartNumber'|tail -n +2`
systemmemoryserialnumber=`cat $f |grep DEV2_Win32_PhysicalMemory -B 1 | /usr/local/bin/tblmap -d ';' -k 'SerialNumber'|tail -n +2`
systemmemoryspeed=`cat $f |grep DEV2_Win32_PhysicalMemory -B 1 | /usr/local/bin/tblmap -d ';' -k 'Speed'|tail -n +2`


videocontrollercompatiblity=`cat $f |grep DEV_Win32_VideoController  -B 1 | /usr/local/bin/tblmap -d ';' -k 'AdapterCompatibility'|tail -n +2`
videocontrollerAdapterRAM=`cat $f |grep DEV_Win32_VideoController  -B 1 | /usr/local/bin/tblmap -d ';' -k 'AdapterRAM'|tail -n +2`
videocontrollerCaption=`cat $f |grep DEV_Win32_VideoController  -B 1 | /usr/local/bin/tblmap -d ';' -k 'Caption'|tail -n +2`
videocontrollerDescription=`cat $f |grep DEV_Win32_VideoController  -B 1 | /usr/local/bin/tblmap -d ';' -k 'Description'|tail -n +2`



diskdrivesize=`cat $f |grep DEV_Win32_DiskDrive  -B 1 | /usr/local/bin/tblmap -d ';' -k 'Size'|tail -n +2`
diskdriveCaption=`cat $f |grep DEV_Win32_DiskDrive  -B 1 | /usr/local/bin/tblmap -d ';' -k 'Caption'|tail -n +2`
diskdriveSerialNumber=`cat $f |grep DEV_Win32_DiskDrive  -B 1 | /usr/local/bin/tblmap -d ';' -k 'SerialNumber'|tail -n +2`


monitorManufacturer=`cat $f |grep DEV_Monitor_Array  -B 1 | /usr/local/bin/tblmap -d ';' -k 'Manufacturer'|tail -n +2`
monitorModel=`cat $f |grep DEV_Monitor_Array  -B 1 | /usr/local/bin/tblmap -d ';' -k 'Model'|tail -n +2`
monitorSerialNumber=`cat $f |grep DEV_Monitor_Array  -B 1 | /usr/local/bin/tblmap -d ';' -k 'SerialNumber'|tail -n +2`

networkmacaddr=`cat $f |grep DEV_win32_networkadapterconfiguration  -B 1 | /usr/local/bin/tblmap -d ';' -k 'MACAddress'|tail -n +2`


batteryID=`cat $f |grep DEV_win32_battery  -B 1 | /usr/local/bin/tblmap -d ';' -k 'DeviceID'|tail -n +2`



totalphysicalmemoryGB=`expr $totalphysicalmemory / 1048576000`
videocontrollerAdapterRAMGB=`expr $videocontrollerAdapterRAM / 1048576000`
diskdrivesizeGB=`expr $diskdrivesize / 1048576000`


echo "<tr>"  >> /tmp/inventory2.html
    echo "  <td><pre>$computer</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$user</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$data</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$processor</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$sysvendor</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$motherboard</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$totalphysicalmemoryGB</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$system</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$systemarch</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$systemversion</pre></td>"  >> /tmp/inventory2.html

    echo "  <td><pre>$systemboard</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$systemboardserialnumber</pre></td>"  >> /tmp/inventory2.html




    echo "  <td><pre>$systemmemorydev</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$systemmemorysize</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$systemmemorymanufacter</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$systemmemorypartnumber</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$systemmemoryserialnumber</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$systemmemoryspeed</pre></td>"  >> /tmp/inventory2.html

    echo "  <td><pre>$videocontrollercompatiblity</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$videocontrollerAdapterRAMGB GB</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$videocontrollerCaption</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$videocontrollerDescription</pre></td>"  >> /tmp/inventory2.html

    echo "  <td><pre>$diskdriveCaption</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$diskdrivesize</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$diskdriveSerialNumber</pre></td>"  >> /tmp/inventory2.html


    echo "  <td><pre>$monitorManufacturer</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$monitorModel</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$monitorSerialNumber</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$networkmacaddr</pre></td>"  >> /tmp/inventory2.html
    echo "  <td><pre>$batteryID</pre></td>"  >> /tmp/inventory2.html


    echo "</tr>" >> /tmp/inventory2.html








echo "<tr>"  >> /tmp/i.html
    echo "  <td><pre>$computer</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$user</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$data</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$processor</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$sysvendor</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$motherboard</pre></td>"  >> /tmp/i.html
#    echo "  <td><pre>$totalphysicalmemoryGB</pre></td>"  >> /tmp/i.html
#    echo "  <td><pre>$system</pre></td>"  >> /tmp/i.html
#    echo "  <td><pre>$systemarch</pre></td>"  >> /tmp/i.html
#    echo "  <td><pre>$systemversion</pre></td>"  >> /tmp/i.html

    echo "  <td><pre>$systemboard</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$systemboardserialnumber</pre></td>"  >> /tmp/i.html




#    echo "  <td><pre>$systemmemorydev</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$systemmemorysize</pre></td>"  >> /tmp/i.html
#    echo "  <td><pre>$systemmemorymanufacter</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$systemmemorypartnumber</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$systemmemoryserialnumber</pre></td>"  >> /tmp/i.html
#    echo "  <td><pre>$systemmemoryspeed</pre></td>"  >> /tmp/i.html

#    echo "  <td><pre>$videocontrollercompatiblity</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$videocontrollerAdapterRAMGB GB</pre></td>"  >> /tmp/i.html
#    echo "  <td><pre>$videocontrollerCaption</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$videocontrollerDescription</pre></td>"  >> /tmp/i.html

    echo "  <td><pre>$diskdriveCaption</pre></td>"  >> /tmp/i.html
#    echo "  <td><pre>$diskdrivesize</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$diskdriveSerialNumber</pre></td>"  >> /tmp/i.html


    echo "  <td><pre>$monitorManufacturer</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$monitorModel</pre></td>"  >> /tmp/i.html
    echo "  <td><pre>$monitorSerialNumber</pre></td>"  >> /tmp/i.html
#    echo "  <td><pre>$networkmacaddr</pre></td>"  >> /tmp/i.html

    echo "  <td><pre>$batteryID</pre></td>"  >> /tmp/i.html

    echo "</tr>" >> /tmp/i.html





    # do some stuff here with "$f"
    # remember to quote it or spaces may misbehave
done


echo "</table>" >> /tmp/inventory2.html
echo "</body></html>" >> /tmp/inventory2.html


echo "</table>" >> /tmp/i.html
echo "</body></html>" >> /tmp/i.html

cat /tmp/inventory2.html > $EXPORT/inventory2.html
cat /tmp/inventory2.html > $IMPORT/inventory2.html



cat /tmp/i.html > $EXPORT/i.html

git pull
git add .
commit=`git commit -m "bashrun autocommit" | grep "nothing to commit" |wc -l`

if [ $commit -ne 1 ]; then 
echo "some changes"
git push
fi

