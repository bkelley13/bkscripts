param(
    [Parameter()]
    [String]$jethome
)

Write-Output $jethome
$b = {"c:\work\$jethome"}
$env:JET_HOME=& $b
Write-Output $env:JET_HOME
