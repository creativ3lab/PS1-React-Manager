# yarn-init.ps1

function Get-TimedInput {
    param (
        [string]$Prompt,
        [int]$Timeout,
        [string]$DefaultValue
    )

    Write-Host $Prompt
    $userInput = Read-Host -TimeoutSec $Timeout

    if (!$userInput) {
        return $DefaultValue
    } else {
        return $userInput
    }
}


function Initialize-YarnProject {
    Write-Host "Welcome to the Yarn Project Initialization Script!"
    Write-Host "-----------------------------------------------"
    Write-Host "This script will guide you through the process of creating a new Yarn project."
    Write-Host "Please follow the prompts to select your project directory and framework."

    # Select Project Directory
    Write-Host "Select a project directory:"
    Write-Host "-------------------------"
    Write-Host "This is where your project files will be stored."
    Write-Host "Please choose a directory from the following options:"
    
    Write-Host "1. C:\Users\$env:USERNAME\workspace\"
    Write-Host "2. D:\Users\$env:USERNAME\workspace\"
    Write-Host "3. E:\Users\$env:USERNAME\workspace\"
    
     #Directory selection 
     $directoryChoice = Get-TimedInput 'Enter the number of your chosen directory (default is 1): ' -Timeout 60 -DefaultValue '1'

     switch ($directoryChoice) {
         1 { 
             # Create React App directory 
             write-host“creating react app in c : \users \$ env : username \ workspace”
             $projectDirectory = “C :\ Users \$ env : USERNAME \ workspace \"}
         2 { 
             # Vue cli directory   
              write-host“creating vue cli in d : \users \$ env : username \ workspace”        
              $projectDirectory = “D :\ Users \$ env : USERNAME \ workspace \"}
          3 {  
               #Angular Cli Directory     
               write-host“creating angular cli in e : \users \$ env : username \ workspace”      
               $projectDirectory = “E :\ Users \$ env : USERNAME \ workspace \"}  
 }

   #Select framework    
   write-host"select framework:"   
   write-host"-------------------"   
   write-host"This will determine which framework you want to use for your project."   
   write-host"Please choose a framework from the following options:"  

      #Framework Selection Options     
      write-host"1. React (Create React App)"     
      write-host"2. Vue.js (Vue CLI)"     
      write-host"3. Angular (Angular CLI)"     
       #Framework selection input      
       $frameworkChoice=Get-timedinput‘Enter number of chosen framework(default is 1):’–timeout60–defaultvalue‘1’

       switch($frameworkChoice){
           1{
               #React Framework Explanation      
               write-host“create react app”       
               yarn create react-app .         
           }
           2{
              #Vue.js Framework Explanation        
              npm install vue-cli        
              vue init webpack-simple my-vue-app           
           }
           3{
                #Angular Framework Explanation            
                npm install angular-cli            
                ng new my-angular-app             
          }

 }

write-host“done initializing yarn project”

Initialize-YarnProject   

