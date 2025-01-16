# yarn-init.ps1

<<<<<<< Tabnine <<<<<<<
function Get-TimedInput {
    param (
        [string]$Prompt,
        [int]$Timeout,
        [string]$DefaultValue
    )

    Write-Host $Prompt
    $input = Read-Host -TimeoutSec $Timeout#-
    $userInput = Read-Host -TimeoutSec $Timeout#+

    if (!$input) {#-
    if (!$userInput) {#+
        return $DefaultValue
    } else {
        return $input#-
        return $userInput#+
    }
}
>>>>>>> Tabnine >>>>>>># {"conversationId":"ed1b85f5-c393-4f72-83df-3e23b317f0e5","source":"instruct"}

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
        $projectPath = $projectDirectory + $packageName
    } else {
        $projectPath = $projectDirectory + "(Default Package Name Here)"
    }

    New-Item -ItemType Directory -Path $projectPath -Force
    Set-Location $projectPath

    # Run yarn init and install dependencies
    yarn init -y

    # Create React App
    Write-Host "Create React App"
    Write-Host "----------------"
    $appName = Get-TimedInput 'Please enter a name for your React app:' -Timeout 45 -DefaultValue 'my-react-app'

    Write-Host "Use Template? (y/n)"
    $useTemplate = Read-Host

    if ($useTemplate -eq "y") {
        Write-Host "Available templates: typescript, default"
        $templateName = Get-TimedInput 'Please select a template:' -Timeout 45 -DefaultValue 'default'
        yarn create react-app $appName --template $templateName
    } else {
        yarn create react-app $appName
    }

    npm install --save-dev @types/react @types/react-dom typescript @babel/preset-react @babel/preset-typescript webpack webpack-cli webpack-dev-server babel-loader css-loader style-loader file-loader html-webpack-plugin clean-webpack-plugin webpack-bundle-analyzer react-refresh-webpack-plugin postcss postcss-loader autoprefixer cssnano eslint eslint-config-react-app prettier husky lint-staged jest jest-environment-jsdom ts-jest babel-jest

    Write-Host "Done. Your React app has been created."
}

Initialize-YarnProject

