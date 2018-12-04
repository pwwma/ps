<#
  Not a one liner, but might be useful

  Basic, array of folder names - go ahead and create them with sub folders.

#>

CLEAR
### Variables
$ArtistFolders = 'ArtistA','ArtistB','ArtistC','ArtistD','ArtistE','ArtistF'

ForEach($a in $ArtistFolders)
{
 
 $b = 'D:\Repository\Artist_Catalogue\' + $a
 New-Item -ItemType Directory -Path $b
}

ForEach($a in $ArtistFolders)
{
 
 #Create Top Folder and Sub Folders
 $b = 'D:\DestinationTopFolder\' + $a
 New-Item -ItemType Directory -Path $b
 $c = $b + '\Video'
 $d = $b + '\Audio'
 $e = $b + '\Images'
 $f = $b + '\Channels'
 New-Item -ItemType Directory -Path $b
 New-Item -ItemType Directory -Path $c
 New-Item -ItemType Directory -Path $d
 New-Item -ItemType Directory -Path $e
 New-Item -ItemType Directory -Path $f


 #Create some test files with extensions
 $fileCreator = $c + '\' + $a + '.mp4'
 New-Item -ItemType File $fileCreator 
 $fileCreator = $d + '\' + $a + '.mp3'
 New-Item -ItemType File $fileCreator
 $fileCreator = $e + '\' + $a + '.png'
 New-Item -ItemType File $fileCreator
 
}
