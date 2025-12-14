write-Host "Write exit to stop the loop" -Foregroundcolor Yellow
do {

	$input = Read-Host
	if ($Input -eq "poop") {
		Write-Host "Ew bro thats gross" -ForegroundColor Red
	} elseif ($Input -eq "chromatography") {
		Write-Host "ok chromatographical master" -ForegroundColor Green
	} elseif ($Input -eq "exit") {
	exit
	} else {
		Write-Host "OK i didnt get that now." -ForegroundColor Yellow
	}
} while ($Input -ne "exit")