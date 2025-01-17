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


 # once user selects their frame work install what they need 

switch ($selectedFrameworkIndex ) {

{$_– eq ”1″}{npx Create-react-app myapp }
{$_– eq ”2″}{npm install-g gatsby-cli && gatsby new myapp }
{$_– eq ”3″}{npx create-next-app myapp }
{$_– eq ”4″}{npm install-g angular/cli && ng new myapp}
 Default {}
 }
