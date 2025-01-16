# Add-package.ps1

Write-Host "Enter the package name:"
$packageName = Read-Line

if ($packageName) {
  yarn add $packageName
} else {
  Write-Host "Package name is required."
}