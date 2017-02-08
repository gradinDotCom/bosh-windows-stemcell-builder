$ErrorActionPreference = "Stop";
trap { $host.SetShouldExit(1) }

$Computer = $env:COMPUTERNAME
$ADSI = [ADSI]("WinNT://$Computer")
$Group = $ADSI.Create('Group', 'Vcap')
$Group.SetInfo()
$Group.Description  = 'Vcap'
$Group.SetInfo()
