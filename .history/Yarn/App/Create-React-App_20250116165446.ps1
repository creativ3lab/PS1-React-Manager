# yarn-init.ps1

function Get-TimedInput {
    param (
        [string]$Prompt,
        [int]$Timeout,
        [string]$DefaultValue
    )

    Write-Host $Prompt
    $input = Read-Host -TimeoutSec $Timeout

    if (!$input) {
        return $DefaultValue
    } else {
        return $input
    }
}

function Initialize-YarnProject {
    Write-Host "Running yarn init -y..."

    $packageName = Get-TimedInput 'Enter a package name (e.g. my-app):' -Timeout 45 -DefaultValue '(Default Package Name Here)'
    $version = Get-TimedInput 'Enter a version number (e.g. 1.0.0):' -Timeout 45 -DefaultValue '(Default Version Here)'
    $mainFile = Get-TimedInput 'Enter the main entry point file (e.g. index.js):' -Timeout 45 -DefaultValue 'index.js'
    $licence = Get-TimedInput 'Enter a license type (e.g. MIT):' -Timeout 90 -DefaultValue 'MIT'
    $keywords = Get-TimedInput 'Enter keywords for your project (separated by spaces):' -Timeout 60 -DefaultValue 'one two three four five'

    Write-Host "Create React App"
    Write-Host "----------------"
    Write-Host "This will create a new React app in a directory with the given name."
    Write-Host "Please enter a name for your React app:"
    Write-Host "(Example: my-react-app)"
    $appName = Read-Host

    Write-Host "Use Template?"
    Write-Host "------------"
    Write-Host "You can choose to use a template for your React app."
    Write-Host "Available templates: typescript, default"
    Write-Host "Please enter y to use a template, or n to skip:"
    
      if ((Read-host)  –eq “y”){
          write-host “you chose y“ 
          write-host “available templates typescript and default“ 
          write-host “please select one of these options below“  
          read-host  
      }
       else { 
         write-host “you chose n“   
       }

if ($useTemplate)
{
   yarn create react-app --template=$templateName   
}else{
     yarn create react-app  
}   

      npm install --save-dev @types/react @types/react-dom typescript @babel/preset-react @babel/preset-typescript webpack webpack-cli webpack-dev-server babel-loader css-loader style-loader file-loader html-webpack-plugin clean-webpack-plugin webpack-bundle-analyzer react-refresh-webpack-plugin postcss postcss-loader autoprefixer cssnano eslint eslint-config-react-app prettier husky lint-staged jest jest-environment-jsdom ts-jest babel-jest 

      Write-Host "Done. Your values have been generated."
}

Initialize-YarnProject