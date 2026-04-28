# Define source and destination
$source = "P:\karnor\targte_origin"
$destination = "C:\Users\B247549\Desktop\destination"

# Create destination folder if it doesn't exist
if (!(Test-Path -Path $destination)) {
    New-Item -ItemType Directory -Path $destination
}

# Copy all contents (including subfolders and files)
Copy-Item -Path "$source\*" -Destination $destination -Recurse -Force

Write-Host "Copy completed from '$source' to '$destination'"

# Run the EXE
$exePath = "C:\GAMS\49\findthisgams.exe"

if (Test-Path $exePath) {
    & $exePath
    Write-Host "Executable ran successfully"
} else {
    Write-Host "Executable not found at $exePath"
}