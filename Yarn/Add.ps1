# Add-package.ps1

# Ask for user input (package name)
$packageName = Read-Host "Enter the package name"

# Run yarn add command with user input
yarn add $packageName