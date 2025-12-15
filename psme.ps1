$Host.UI.RawUI.BackgroundColor = 'Black'
$Host.UI.RawUI.ForegroundColor = 'White'
$Host.UI.RawUI.WindowSize = [System.Management.Automation.Host.Size]::new(70,30)
$Host.UI.RawUI.BufferSize = [System.Management.Automation.Host.Size]::new(70,30)
$Host.UI.RawUI.WindowTitle = "Geometry Dash Download"
$checkadmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
cls
set-location C:\temp

write-host "Geometry Dash Downloader" -ForegroundColor Green
write-host "Crack from: Steamrip.com" -ForegroundColor Yellow
start-sleep -seconds 2

# Functions

function Complete {
            write-host "Full process completed!" -ForegroundColor Green 
        write-host "Launching.." -ForegroundColor Green
        start-process "$PSScriptRoot\GD\GeometryDash.exe"
        exit
}

function Cleanup { 
      try {
        Remove-item "C:\Temp\GD.Zip" -Force
        complete
        } catch {
            write-host "Failed to clean up file!" -ForegroundColor Red
            start-sleep -seconds 3
            exit
        }
}

function Unzip {
    if (Test-path "C:\Temp\GD.zip") {
        write-host "File existence: True" -ForegroundColor Green
        write-host "Attempting to unzip..." -ForegroundColor Yellow
        start-sleep -seconds 1
        try {
        Expand-Archive -path "C:\Temp\GD.zip" -DestinationPath "$PSScriptRoot\GD" -Force
        write-host "Success!" -ForegroundColor Green
        write-host "Cleaning up..." -ForegroundColor Yellow
        Cleanup
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
    invoke-WebRequest "https://www.directfiles.link/OF3IB1BO1/GD.zip" -OutFile "GD.zip" -ErrorAction Stop
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
        start-sleep -seconds 10
        exit
    }
}

CheckElevation