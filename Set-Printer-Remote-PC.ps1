<#
    Remote install a printer, you must have local administrative rights on the remote PC
#>

Clear-Host

$pcName = "PC name you have Admin rights to"
$printerName ="\\PrintServer\Printer_Name"

Invoke-Command -ComputerName $pcName -Scriptblock {RUNDLL32 PRINTUI.DLL,PrintUIEntry /ga /n$printerName }
