 # Get Hotfixes Installed on the Servers
  
 $Servers=Get-Content D:\PS-Scripts\Installed-Updates\Servers.txt

 foreach ($Hostname in $Servers) 
 {
  $Date=(Get-Date).ToString("yyyyMMdd")
  $Out="D:\PS-Scripts\Installed-Updates\"+$Hostname+"-installedupdates-"+$Date+".csv"
  get-hotfix | select PSComputerName,Description,HotFixID,InstalledOn | export-csv $Out
  }

  # get-hotfix | select PSComputerName,Description,HotFixID | export-csv c:\$env:COMPUTERNAME-installedupdates.csv

