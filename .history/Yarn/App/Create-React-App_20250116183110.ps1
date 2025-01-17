# Directory selection
Write-Host "Select directory:"
Write-Host "----------------"
Write-Host "1.C:\Users\$env:USERNAME\Workspace\"
Write-Host "2.D:\Users\$env:USERNAME\Workspace\"
Write-Host "3.E:\Users\$env:USERNAME\Workspace\"
Write-Host "4.F:\Users\$env:USERNAME\Workspace\"
Write-Host "5.G:\Users\$env:USERNAME\Workspace\"


$directoryChoice = Read-host “Please select one : “

if (!$directoryChoice) {
  $directoryChoice = 1
}

switch ($directoryChoice) {
  { $_ –eq “1”} {$projectDirectory = “C:\Users\$env:USERNAME\Workspace\"}
  { $_ –eq “2”} {$projectDirectory = “D:\Users\$env:USERNAME\Workspace\"}
  { $_ –eq “3”} {$projectDirectory = “E:\ Users\$env:USERNAME \ Workspace \"}
  { $_ –eq “4”} {$projectDirectory =“F : \ Users \$ env : USERNAME \ Workspace \" }
   Default {$projectDirectory ="C :\ Users \$ env : USERNAME \ Workspace \" }
}


# Framework selection
Write-Host "Select framework:"
Write-Host "------------------"

$frameworks = @(
    [PSCustomObject]@{
        Name = 'Create React App'
        Type = 'Front-end'
        Description = 'A popular framework for building front-end applications.'
    },
    [PSCustomObject]@{
        Name = 'Gatsby'
        Type = 'Server-side Rendering'
        Description = 'A fast and secure framework for building server-side rendered websites.'
    },
    [PSCustomObject]@{
        Name = 'Next.js'
        Type = 'Server-side Rendering'
        Description = 'A popular framework for building server-side rendered and statically generated websites.'
    },
    [PSCustomObject]@{
        Name ='Angular '
         Type ='Full-stack '
          Description= ‘A comprehensive frame work   For Building Complex Web Applications ’ 
     }, 
      [PSCustomObject ] @ {
          Name=‘ Vue .js’
           Type=’ Full Stack ’  
           Description=’A Progressive And Flexible Frame work For Building Web Applications’
       } 
     )


foreach ($framework in $frameworks ) {
 Write-host "$($frameworks.IndexOf($framework)+1). $($framework.Name)"  
 Write-host "$($framework.Type)"   
 Write-host "$($framework.Description)"
}


$selectedFrameworkIndex =(Read-host ‘Enter The Number Of Selected Frame Work‘)


# Get project name with 60 second timeout
Write-Host "Enter project name (default: myapp):"
$projectNameTimeoutChoice = Get-TimedInput -Prompt "" -Timeout 60 -DefaultValue "myapp"


# Template selection
Write-Host "Select template:"
Write-Host "----------------"

$templates = @(
    [PSCustomObject]@{
        Name = 'Default Template'
        Description = 'The default template for the selected framework.'
    },
    [PSCustomObject]@{
        Name ='Typescript Template '
         Description= ‘A template for building TypeScript applications.’ 
     }, 
      [PSCustomObject ] @ {
          Name='Tailwind CSS Template’
           Description='A template for building applications with Tailwind CSS.’  
       } ,
       [PSCustomObject ] @ {
          Name='Material UI Template’
           Description='A template for building applications with Material UI.’  
       } ,
       [PSCustomObject ] @ {
          Name='Bootstrap Template’
           Description='A template for building applications with Bootstrap.’  
       } ,
       [PSCustomObject ] @ {
          Name='Styled Components Template’
           Description='A template for building applications with Styled Components.’  
       } ,
      [PSCustomObject ] @ {
          Name='Redux Template’
           Description='A template for building applications with Redux state management.’  
       } ,   
      [PSCUSTOMOBJECT ]@{    
         NAME=" Mobx TEMPLATE "
         DESCRIPTION=" A TEMPLATE FOR BUILDING APPLICATIONS WITH MOBX STATE MANAGEMENT. "
            
     }

)


foreach ($template in $templates ) {
 Write-host "$($templates.IndexOf($template)+1). $($template.Name)"  
 Write-host "$($template.Description)"
}

$templateIndexChoice =(Read-host ‘Enter The Number Of Selected TEMPLATE WORK‘)

switch ($selectedFrameworkIndex ) {

{$_– eq ”1″}{npx create-react-app $projectNameTimeoutChoice --template=$([string]$templates[$templateIndexChoice - 1].Name)}
{$_– eq ”2″}{npm install-g gatsby-cli && gatsby new $projectNameTimeoutChoice --template=$([string]$templates[$templateIndexChoice - 1].Name)}
{$_– eq ”3″}{npx create-next-app $projectNameTimeoutChoice --example=$([string]$templates[$templateIndexChoice - 1].Name)}
 Default {}
 }

function Get-TimedInput {param (
[string]$Prompt,
[int]$Timeout,
[string]$DefaultValue)
start-sleep –milliseconds (60000-$timeout*1000)
$inputvalue=(read-host –prompt “”)
if (!$inputvalue){return “”+$defaultValue}
else{return “”+$inputvalue}
}