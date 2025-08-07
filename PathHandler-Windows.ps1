<#

MabelHUB Executable Search Path Extender Utility - Windows Version
Copyright MabelMedia LLC.

This Script Extends The Executable Search Path To Allow You To Execute Any Of The Binaries Provided By MabelHUB, Or The Apps It Installs.

#>

function ExtendPath {
    $env:path = "${args[0]};$env:path"
}

ExtendPath("$env:userprofile/MabelHUB")
$AuthorFolders = Get-ChildItem "$env:userprofile/MabelHUB/Apps/"
for ($i=0; $i<$AuthorFolders.Count; $i++) {
    $AppFolders = Get-ChildItem "${AuthorFolders[$i].FullName}/"
    for ($j=0; $j<$AppFolders.Count; $j++) {
        ExtendPath(${AppFolders[$j].FullName})
    }
}
