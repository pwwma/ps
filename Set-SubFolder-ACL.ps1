<#
    Copies ACL settings from an existing folder to a new folder.
    
#>


Clear-Host

#Get the correct acl permissions into $perms and keep in memory from the correct template folder
#Always use the template folder as this will have the correct permissions
$perms = Get-ACL -Path 'Full path to a sub folder with correct ACL settings'

#Change the get-childitem variable to the top folder of the Artist
$artistFolders = Get-ChildItem 'Full path to a sub folder that requires standard ACL Settings' | Select-Object FullName


#Apply the permissions from the $perms variable
ForEach($a in $artistFolders)
{
  write-host $a.FullName
  $perms | Set-Acl $a.FullName
}
