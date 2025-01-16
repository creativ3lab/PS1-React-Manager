# yarn-init.ps1

function Initialize-YarnProject {
    param (
        [string]$PackageName,
        [string]$Version,
        [string]$Description,
        [string]$MainFile,
        [string]$TestCommand
    )

    Init-YarnProjectWithValues `
        -PackageName $(Get-TimedInput 'Package Name:' -Timeout 45 -DefaultValue '(Default Package Name Here)') `
        -Version $(Get-TimedInput 'Version:' -Timeout 45 -DefaultValue '(Default Version Here)') `
        -MainFile $(Get-TimedInput 'Entry Point:' -Timeout 45 -DefaultValue 'index.js') `
        -Licence $(Get-TimedInput 'Licence:' -Timeout 90 -DefaultValue 'MIT') `
        -KeyWords $(Get-TimedInput 'Keywords:' -Timeout 60 -DefaultValue 'one two three four five')

    Write-Host "Would you like me to initialize your app? y/n"
    $userInput = Read-Host

    if ($userInput -eq 'y') {
        Get-command ("npx", "yarn-create-react-app", "appname")
    } else {
        Stop-Transcript
        exit
    }

    Init-YarnProjectWithValues `
        -PackageName $PackageName `
        -Version $Version `
        -MainFile $MainFile

    Write-Host "Done. Your values have been generated."
    Write-Host "Done generating."

    exit
}