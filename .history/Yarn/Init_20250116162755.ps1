# yarn-init.ps1

Write-Host "Running yarn init -y..."

# Run yarn init -y with --yes flag to avoid prompts
$process = Start-Process -FilePath "yarn" -ArgumentList @("init", "-y") -PassThru

# Wait for 5 seconds to allow yarn to start initializing
Start-Sleep -s 5

# Get the current directory name
$directoryName = (Get-Location).Name

# Ask for user input for package name
Write-Host "Enter package name (default: $directoryName):"
$packageName = Read-Host -Prompt ""

if (-not $packageName) {
  $packageName = $directoryName
}

# Send the package name to the yarn process using stdin
$process.StandardInput.WriteLine($packageName)

# Ask for user input for version (with timeout)
Write-Host "Enter version (default: 1.0.0):"
 getVersionInput

function getVersionInput {
  param (
    [int]$timeout = 45,
    [string]$defaultValue = "1.0.0"
  )

  $versionInput = Read-Host -Prompt "" -TimeoutSec $timeout

  if (-not $versionInput) {
    Write-Host "Using default version: $defaultValue"
    $versionInput = $defaultValue
  }

  # Send the version to the yarn process using stdin
  $process.StandardInput.WriteLine($versionInput)
}

# Wait for yarn init to complete
$process.WaitForExit()

Write-Host "Yarn init completed!"