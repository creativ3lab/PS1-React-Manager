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
    Write-Host "Select a project directory:"
    Write-Host "-------------------------"
    Write-Host "1. C:\Users\$env:USERNAME\workspace\%ProjectName%"
    Write-Host "2. D:\Users\$env:USERNAME\workspace\%ProjectName%"
    Write-Host "3. E:\Users\$env:USERNAME\workspace\%ProjectName%"
    Write-Host "4. F:\Users\$env:USERNAME\workspace\%ProjectName%"
    Write-Host "5. G:\Users\$env:USERNAME\workspace\%ProjectName%"
    
    $directoryChoice = Get-TimedInput 'Enter the number of your chosen directory (default is 1): ' -Timeout 60 -DefaultValue '1'

    switch ($directoryChoice) {
        1 { $projectDirectory = "C:\Users\$env:USERNAME\workspace\" }
        2 { $projectDirectory = "D:\Users\$env:USERNAME\workspace\" }
        3 { $projectDirectory = "E:\Users\$env:USERNAME\workspace\" }
        4 { $projectDirectory = "F:\Users\$env:USERNAME\workspace\" }
        5 { $projectDirectory = "G:\Users\$env:USERNAME\workspace\" }
        Default { $projectDirectory = "C:\Users\$env:USERNAME\workspace\" }
    }

    $packageName = Get-TimedInput 'Enter a package name (e.g. my-app):' -Timeout 45 -DefaultValue '(Default Package Name Here)'
    
    # Replace %ProjectName% with the actual project name in the project directory path
    if ($packageName) {
        New-Item -ItemType Directory -Path ($projectDirectory + $packageName)
        
        # Navigate to the newly created project directory
        Set-Location ($projectDirectory + $packageName)
        
        # Run yarn init and install dependencies
        yarn init -y
        
        # Create React App
        Write-Host "Create React App"
        Write-Host "----------------"
        
        # Ask for app name and use it to create a new React app
        Read-host “Please enter a name for your React app”
        
            if ((Read-host) –eq “y”){
                write-host “you chose y“ 
                write-host “available templates typescript and default“ 
                write-host “please select one of these options below“  
                read-host  
            }else{ 
                write-host “you chose n“   
            }

            npm install --save-dev @types/react @types/react-dom typescript @babel/preset-react @babel/preset-typescript webpack webpack-cli webpack-dev-server babel-loader css-loader style-loader file-loader html-webpack-plugin clean-webpack-plugin webpack-bundle-analyzer react-refresh-webpack-plugin postcss postcss-loader autoprefixer cssnano eslint eslint-config-react-app prettier husky lint-staged jest jest-environment-jsdom ts-jest babel-jest 

            yarn create react-app --template=typescript
        
      } else {
          Set-Location ($projectDirectory + "(Default Package Name Here)")
          yarn init -y
        
          # Create React App
          Read-host “Please enter a name for your React app”

              if ((Read-host) –eq “y”){
                  write-host “you chose y“ 
                  write-host “available templates typescript and default“ 
                  write-host “please select one of these options below“  
                  read-host  
              }else{ 
                  write-host “you chose n“   
              }

              npm install --save-dev @types/react @types/react-dom typescript @babel/preset-react @babel/preset-typescript webpack webpack-cli webpack-dev-server babel-loader css-loader style-loader file-loader html-webpack-plugin clean-webpack-plugin webpack-bundle-analyzer react-refresh-webpack-plugin postcss postcss-loader autoprefixer cssnano eslint eslint-config-react-app prettier husky lint-staged jest jest-environment-jsdom ts-jest babel-jest 

              yarn create react-app --template=typescript

      }

}

Initialize-YarnProject                   
