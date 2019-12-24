$name = "$env:COMPUTERNAME"
$user="$env:UserName"
$fullinvpath="\\192.168.0.2\Upload\inventory\$name.csv"

Remove-Item -Path $fullinvpath

$((Get-Date).ToString('yyyyMMdd-HH-mm-ss')) | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

$user | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath
 
(Get-WmiObject  Win32_ComputerSystem  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_ComputerSystem"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"',''| Out-File -Encoding utf8 -append   -FilePath  $fullinvpath


(Get-WmiObject  Win32_OperatingSystem  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_OperatingSystem"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_BaseBoard  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_BaseBoard"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_BIOS  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_BIOS"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_SystemSlot  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_SystemSlot"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_PortConnector  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_PortConnector"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_Processor  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_Processor"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_PhysicalMemoryArray  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_PhysicalMemoryArray"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_PhysicalMemory  |  Select-Object @{Name='DEV2';Expression={"DEV2_Win32_PhysicalMemory"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_CacheMemory  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_CacheMemory"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_PNPEntity  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_PNPEntity"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_NetworkAdapter  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_NetworkAdapter"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_SoundDevice  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_SoundDevice"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_IdeController  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_IdeController"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_ScsiController  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_ScsiController"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_UsbController  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_UsbController"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_1394Controller  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_1394Controller"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_PCMCIAController  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_PCMCIAController"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_VideoController  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_VideoController"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_TapeDrive  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_TapeDrive"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_DiskDrive  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_DiskDrive"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_DiskPartition  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_DiskPartition"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_LogicalDiskToPartition  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_LogicalDiskToPartition"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_CDROMDrive  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_CDROMDrive"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_DesktopMonitor  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_DesktopMonitor"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_Keyboard  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_Keyboard"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_PointingDevice  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_PointingDevice"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  Win32_Printer  |  Select-Object @{Name='DEV';Expression={"DEV_Win32_Printer"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

(Get-WmiObject  win32_networkadapterconfiguration  |  Select-Object @{Name='DEV';Expression={"DEV_win32_networkadapterconfiguration"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath


(Get-WmiObject  win32_battery  |  Select-Object @{Name='DEV';Expression={"DEV_win32_battery"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath

  <#

      .SYNOPSIS
      This powershell function gets information about the monitors attached to any computer. It uses EDID information provided by WMI. If this value is not specified it pulls the monitors of the computer that the script is being run on.

      .DESCRIPTION
      The function begins by looping through each computer specified. For each computer it gets a litst of monitors.
      It then gets all of the necessary data from each monitor object and converts and cleans the data and places it in a custom PSObject. It then adds
      the data to an array. At the end the array is displayed.

      .PARAMETER ComputerName
      Use this to specify the computer(s) which you'd like to retrieve information about monitors from.

      .EXAMPLE
      PS C:/> Get-Monitor.ps1 -ComputerName SSL1-F1102-1G2Z

      Manufacturer Model    SerialNumber AttachedComputer
      ------------ -----    ------------ ----------------
      HP           HP E241i CN12345678   SSL1-F1102-1G2Z 
      HP           HP E241i CN91234567   SSL1-F1102-1G2Z 
      HP           HP E241i CN89123456   SSL1-F1102-1G2Z

      .EXAMPLE
      PS C:/> $Computers = @("SSL7-F108F-9D4Z","SSL1-F1102-1G2Z","SSA7-F1071-0T7F")
      PS C:/> Get-Monitor.ps1 -ComputerName $Computers

      Manufacturer Model      SerialNumber AttachedComputer
      ------------ -----      ------------ ----------------
      HP           HP LA2405x CN12345678   SSL7-F108F-9D4Z
      HP           HP E241i   CN91234567   SSL1-F1102-1G2Z 
      HP           HP E241i   CN89123456   SSL1-F1102-1G2Z 
      HP           HP E241i   CN78912345   SSL1-F1102-1G2Z
      HP           HP ZR22w   CN67891234   SSA7-F1071-0T7F

 


  [CmdletBinding()]
  PARAM (
    [Parameter(ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
    [String[]]$ComputerName = $env:ComputerName
  )
   #>
  #List of Manufacture Codes that could be pulled from WMI and their respective full names. Used for translating later down.
  $ManufacturerHash = @{ 
    "AAC" =	"AcerView";
    "ACR" = "Acer";
    "AOC" = "AOC";
    "AIC" = "AG Neovo";
    "APP" = "Apple Computer";
    "AST" = "AST Research";
    "AUO" = "Asus";
    "BNQ" = "BenQ";
    "CMO" = "Acer";
    "CPL" = "Compal";
    "CPQ" = "Compaq";
    "CPT" = "Chunghwa Pciture Tubes, Ltd.";
    "CTX" = "CTX";
    "DEC" = "DEC";
    "DEL" = "Dell";
    "DPC" = "Delta";
    "DWE" = "Daewoo";
    "EIZ" = "EIZO";
    "ELS" = "ELSA";
    "ENC" = "EIZO";
    "EPI" = "Envision";
    "FCM" = "Funai";
    "FUJ" = "Fujitsu";
    "FUS" = "Fujitsu-Siemens";
    "GSM" = "LG Electronics";
    "GWY" = "Gateway 2000";
    "HEI" = "Hyundai";
    "HIT" = "Hyundai";
    "HSL" = "Hansol";
    "HTC" = "Hitachi/Nissei";
    "HWP" = "HP";
    "IBM" = "IBM";
    "ICL" = "Fujitsu ICL";
    "IVM" = "Iiyama";
    "KDS" = "Korea Data Systems";
    "LEN" = "Lenovo";
    "LGD" = "Asus";
    "LPL" = "Fujitsu";
    "MAX" = "Belinea"; 
    "MEI" = "Panasonic";
    "MEL" = "Mitsubishi Electronics";
    "MS_" = "Panasonic";
    "NAN" = "Nanao";
    "NEC" = "NEC";
    "NOK" = "Nokia Data";
    "NVD" = "Fujitsu";
    "OPT" = "Optoma";
    "PHL" = "Philips";
    "REL" = "Relisys";
    "SAN" = "Samsung";
    "SAM" = "Samsung";
    "SBI" = "Smarttech";
    "SGI" = "SGI";
    "SNY" = "Sony";
    "SRC" = "Shamrock";
    "SUN" = "Sun Microsystems";
    "SEC" = "Hewlett-Packard";
    "TAT" = "Tatung";
    "TOS" = "Toshiba";
    "TSB" = "Toshiba";
    "VSC" = "ViewSonic";
    "ZCM" = "Zenith";
    "UNK" = "Unknown";
    "_YV" = "Fujitsu";
      }
      
  
  #Takes each computer specified and runs the following code:
  #ForEach ($Computer in $ComputerName) {
  
    #Grabs the Monitor objects from WMI
    $Monitors = Get-WmiObject -Namespace "root\WMI" -Class "WMIMonitorID" -ComputerName $name -ErrorAction SilentlyContinue
    
    #Creates an empty array to hold the data
    $Monitor_Array = @()
    
    #Takes each monitor object found and runs the following code:
    ForEach ($Monitor in $Monitors) {
      
      #Grabs respective data and converts it from ASCII encoding and removes any trailing ASCII null values
      If ([System.Text.Encoding]::ASCII.GetString($Monitor.UserFriendlyName) -ne $null) {
        $Mon_Model = ([System.Text.Encoding]::ASCII.GetString($Monitor.UserFriendlyName)).Replace("$([char]0x0000)","")
      } else {
        $Mon_Model = $null
      }
      $Mon_Serial_Number = ([System.Text.Encoding]::ASCII.GetString($Monitor.SerialNumberID)).Replace("$([char]0x0000)","")
      $Mon_Attached_Computer = ($Monitor.PSComputerName).Replace("$([char]0x0000)","")
      $Mon_Manufacturer = ([System.Text.Encoding]::ASCII.GetString($Monitor.ManufacturerName)).Replace("$([char]0x0000)","")
      
      #Filters out "non monitors". Place any of your own filters here. These two are all-in-one computers with built in displays. I don't need the info from these.
      If ($Mon_Model -like "*800 AIO*" -or $Mon_Model -like "*8300 AiO*") {Break}
      
      #Sets a friendly name based on the hash table above. If no entry found sets it to the original 3 character code
      $Mon_Manufacturer_Friendly = $ManufacturerHash.$Mon_Manufacturer
      If ($Mon_Manufacturer_Friendly -eq $null) {
        $Mon_Manufacturer_Friendly = $Mon_Manufacturer
      }
      
      #Creates a custom monitor object and fills it with 4 NoteProperty members and the respective data
      $Monitor_Obj = [PSCustomObject]@{
        Manufacturer     = $Mon_Manufacturer_Friendly
        Model            = $Mon_Model
        SerialNumber     = $Mon_Serial_Number
        AttachedComputer = $Mon_Attached_Computer
      }
      
      #Appends the object to the array
      $Monitor_Array += $Monitor_Obj

    } #End ForEach Monitor
  
    #Outputs the Array
($Monitor_Array  |  Select-Object @{Name='DEV';Expression={"DEV_Monitor_Array"}}, * | ConvertTo-Csv -Delimiter ';' -NoTypeInformation | Select-Object ) -replace '"','' | Out-File -Encoding utf8 -append   -FilePath  $fullinvpath
    
#} #End ForEach Computer