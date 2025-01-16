# Add-package.ps1

function Add-Package {
    param (
      [string]$PackageName
    )
  
    if (-not $PackageName) {
      Write-Host "Enter the package name:"
      $PackageName = Read-Line
    }
  
    yarn add $PackageName
  }
  
  Add-Package -PackageName (Read-Host "Enter optional package name")