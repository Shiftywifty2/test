$Host.UI.RawUI.BackgroundColor = 'Black'
$Host.UI.RawUI.ForegroundColor = 'White'
$Host.UI.RawUI.WindowSize = [System.Management.Automation.Host.Size]::new(70,30)
$Host.UI.RawUI.BufferSize = [System.Management.Automation.Host.Size]::new(70,30)
$Host.UI.RawUI.WindowTitle = "Geometry Dash Download"
$checkadmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
cls
set-location $env:TEMP

write-host "Geometry Dash Downloader" -ForegroundColor Cyan
write-host "Crack from: Steamrip.com" -ForegroundColor Magenta
start-sleep -seconds 2

# Functions

function Complete {
            write-host "Full process completed!" -ForegroundColor Green 
        write-host "Launching.." -ForegroundColor Green
        start-process "$env:USERPROFILE\desktop\GD\Geometry Dash v.2.2074a\GeometryDash.exe"
        exit
}

function RemoveWaste { 
    write-host "Starting deletion.." -ForegroundColor Yellow
      try {
        Remove-item "$env:TEMP\GD.zip" -Force -ErrorAction Stop
        write-host "File cleanup successfull" -ForegroundColor Green
        Complete
        } catch {
            write-host "Failed to clean up file!" -ForegroundColor Red
            start-sleep -seconds 3
            exit
        }
}

function Unzip {
    if (Test-path "$env:TEMP\GD.zip") {   
        write-host "File existence: True" -ForegroundColor Green
        write-host "Attempting to unzip..." -ForegroundColor Yellow
        start-sleep -seconds 1
        try {
        Expand-Archive -path "$env:TEMP\GD.zip" -DestinationPath "$env:USERPROFILE\desktop\GD" -Force
        write-host "Success!" -ForegroundColor Green
        write-host "Cleaning up..." -ForegroundColor Yellow
        RemoveWaste
        } catch {
            write-host "Failed to unzip file!" -ForegroundColor Red
            start-sleep -seconds 3
            exit
        }
      
    } else {
        write-host "ERROR!" -ForegroundColor Red
        write-host "File existence: False" -ForegroundColor Red
        start-sleep -seconds 10
        exit
    }
}

function AttemptDownload {
    try {
    invoke-WebRequest "https://www.dropbox.com/scl/fi/zaj97r52pao5y3w9kvoho/GD.zip?rlkey=vbe24bsct22e97chqpznp2phv&e=1&st=llxcme67&dl=1" -OutFile "GD.zip" -ErrorAction Stop
    Unzip
    } catch {
        write-host "Cannot download the file!" -ForegroundColor Red
        start-sleep -seconds 10
        exit
    }

}

function CheckElevation {
    if ($checkadmin) {
        write-host "Elevated: True" -ForegroundColor Green
        write-host "Attempting download..." -ForegroundColor Green
        AttemptDownload

    } else {
        write-host "Error!" -Foreground Red
        write-host "You need to run this script `nwith an Administrator Powershell instance." -ForegroundColor Red
        start-sleep -seconds 2
            Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
        start-sleep -seconds 10
        exit
    }
}

CheckElevation
