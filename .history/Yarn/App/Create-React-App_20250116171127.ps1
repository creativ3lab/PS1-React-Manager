<<<<<<< Tabnine <<<<<<<
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
        New-Item -ItemType Directory -Path ($projectDirectory + $packageName)#-
        $projectPath = $projectDirectory + $packageName#+
    } else {#+
        $projectPath = $projectDirectory + "(Default Package Name Here)"#+
    }#+

        # Navigate to the newly created project directory#-
        Set-Location ($projectDirectory + $packageName)#-
    New-Item -ItemType Directory -Path $projectPath -Force#+
    Set-Location $projectPath#+

        # Run yarn init and install dependencies#-
        yarn init -y#-
    # Run yarn init and install dependencies#+
    yarn init -y#+

        # Create React App#-
        Write-Host "Create React App"#-
        Write-Host "----------------"#-
    # Create React App#+
    Write-Host "Create React App"#+
    Write-Host "----------------"#+
    $appName = Get-TimedInput 'Please enter a name for your React app:' -Timeout 45 -DefaultValue 'my-react-app'#+

        # Ask for app name and use it to create a new React app#-
        Read-host “Please enter a name for your React app”#-
    Write-Host "Use Template? (y/n)"#+
    $useTemplate = Read-Host#+

            if ((Read-host) –eq “y”){#-
                write-host “you chose y“ #-
                write-host “available templates typescript and default“ #-
                write-host “please select one of these options below“  #-
                read-host  #-
            }else{ #-
                write-host “you chose n“   #-
            }#-
    if ($useTemplate -eq "y") {#+
        Write-Host "Available templates: typescript, default"#+
        $templateName = Get-TimedInput 'Please select a template:' -Timeout 45 -DefaultValue 'default'#+
        yarn create react-app $appName --template $templateName#+
    } else {#+
        yarn create react-app $appName#+
    }#+

            npm install --save-dev @types/react @types/react-dom typescript @babel/preset-react @babel/preset-typescript webpack webpack-cli webpack-dev-server babel-loader css-loader style-loader file-loader html-webpack-plugin clean-webpack-plugin webpack-bundle-analyzer react-refresh-webpack-plugin postcss postcss-loader autoprefixer cssnano eslint eslint-config-react-app prettier husky lint-staged jest jest-environment-jsdom ts-jest babel-jest#-
    npm install --save-dev @types/react @types/react-dom typescript @babel/preset-react @babel/preset-typescript webpack webpack-cli webpack-dev-server babel-loader css-loader style-loader file-loader html-webpack-plugin clean-webpack-plugin webpack-bundle-analyzer react-refresh-webpack-plugin postcss postcss-loader autoprefixer cssnano eslint eslint-config-react-app prettier husky lint-staged jest jest-environment-jsdom ts-jest babel-jest#+

            yarn create react-app --template=typescript#-
#-
      } else {#-
          Set-Location ($projectDirectory + "(Default Package Name Here)")#-
          yarn init -y#-
#-
          # Create React App#-
          Read-host “Please enter a name for your React app”#-
#-
              if ((Read-host) –eq “y”){#-
                  write-host “you chose y“ #-
                  write-host “available templates typescript and default“ #-
                  write-host “please select one of these options below“  #-
                  read-host  #-
              }else{ #-
                  write-host “you chose n“   #-
              }#-
#-
              npm install --save-dev @types/react @types/react-dom typescript @babel/preset-react @babel/preset-typescript webpack webpack-cli webpack-dev-server babel-loader css-loader style-loader file-loader html-webpack-plugin clean-webpack-plugin webpack-bundle-analyzer react-refresh-webpack-plugin postcss postcss-loader autoprefixer cssnano eslint eslint-config-react-app prettier husky lint-staged jest jest-environment-jsdom ts-jest babel-jest #-
#-
              yarn create react-app --template=typescript#-
#-
      }#-
    Write-Host "Done. Your React app has been created."#+
}

Initialize-YarnProject
>>>>>>> Tabnine >>>>>>># {"source":"chat"}
