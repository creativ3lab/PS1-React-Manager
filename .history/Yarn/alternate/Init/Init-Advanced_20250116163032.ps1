# yarn-init.ps1

<<<<<<< Tabnine <<<<<<<
function Initialize-YarnProject {#-
function Init-YarnProject {#+
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
    $input = Read-Host#-
    $userInput = Read-Host#+

    if ($input -eq 'y') {#-
    if ($userInput -eq 'y') {#+
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
>>>>>>> Tabnine >>>>>>># {"conversationId":"bb42d5f3-e745-42dd-87e3-217542d83e9b","source":"instruct"}

  
  function Init-YarnProject {
  param (
  [string]$PackageName,
  [string]$Version,
  [string]$Description,
  [string]$MainFile,
  [string]$TestCommand)
  
  Init-YarnProjectWithValues `
  -PackageName $(Get-TimedInput 'Package Name:' –t ‘45’ –d ‘(Default Package Name Here)’) `
  -Version $(Get-TimedInput 'Version:' –t ‘45’ –d ‘(Default Version Here)’) `
  -MainFile $(Get-TimedInput 'Entry Point:' –t ‘45’ –d ‘index.js’) `
  -Licence $(Get-TimedInput 'Licence:' –t ’90’–d ‘MIT’)`
  -KeyWords $(get-timedinput “keywords”– t‘60’split space “one two three four five”))
  
  write-host “Would you like me too initialize your app? y/n”
  $input= read-host 
  
  if($input-eq’y){
  command (“npx,yarn-create-react-app”,“appname”)  
  }
  else{
  Stop-transcript    
  exit 
  }
  
  Init-YarnProjectWithValues #
  -p PackageName:$packagevalue#
  -V Version:$ver#
  -m Mainfile:index.js#
  
   write-host "
  
  done.your values have been generated”
  
   write-host "
  
  Done generating”
  
   exit 
  
  write-error '
  
   (# logic related error here . sample when record already exists is related see D:\quickstarts\Windows10StoreDemo\UserData.cs .
  
  try  
  {         
   ..validate-or-supply-record(from-user-in )here-return-some-value record-exists(this-is-a-call-from-theother-function(or from global-scope etc.)
  check-if-record-exists(this-functionaccepts-two-threeparameters-of-type-string(=user,pw(lowercasepw),guestemailid(better lowercaseguestmailid.). most of our functions have those two/three parameters.
  
  let’s say when validating pw we call validate-pw(user,pw,guestmailid.) on anyfailurereturnerror gotta handle-those custom exceptions & act accordingly. inthis-case-we’re-onvalidatepw-and-we-have-received-anerrormessage-back-to-us-fromthat validating function.(nowusing power-shellwe-gotthat-as-an-objecteg erroneusobjectmessaageonPWisntcorrectetcbased-ontheseobjectsbehaviors-power-shellwilldisplaythoseerrorsmessages-iwant-catch-andhandlethoseinmypowershellscripwhichmeansI need-getbackthem-in-a-variablefromthatvalidationcall&based-onitsvaluesandpropertyactaccordinglyhere'ssamplehowtoachievetheaboveexplained-forgettingrecordsexist-or-not(forthosecursiousmindstrycheckingexistingrecordi.e guessthe-firstthreecharactersofthepasswordandonthebackendcheck-if-thispassword-withfirst-threecharacters-asprefix-alreadyexists).
  
  HereIsHowYouDoItViaPS:
  
  forcustomObjectswheretheycanbeaccessedviatheirpropertieslikemyobject.propertynameyoucaniterateviaforeach-object-cmdletorsimilarcmdletsavailableinpowershellorusetheWhere-objecttofilteroutyourrequireddata.
  thenoncefiltered-out-data-isreceived-youcanloop-through-it-viaforeach-object-anddoanythingrequired-after-validationlike-saving-it-toDB(requiresanotherDB-specific-module-available-inmarketplacegallery.powerShellgallery.com)e.gsqlservermodule,bcp,bulkcopyispowerfulcmdletwhenusingitincmdLineModeOrgraphicalmode.wecandothesamethingforxml files.toxml/fromxml cmdletsaregoodtoo.alsoexpor/import-csv,sincecsvfilesarewidely-usedasdelimiter-separated-values.
  
   See Also:
  
  https://www.powershellgallery.com/packages?q=tag%3Adatabase
  
  
  https://www.powershellgallery.com/packages?q=tag%3Aazure
  
  
   Let’s take example of saving data in csv file after validation & retrieval via db specific module.
  
  
  csvexample:
  
  
  Import-Csv“C:\Users\Admin\Documents\data.csv”|where{$_.EmployeeID-eq123}|export-csv"C:\Users\Admin\Documents\output.csv"-NoTypeInformation 
  
  
  databaseexample:
  
  
   sqlservermodulewillhelpimport/exportdata.belowisanexampleforsqlserverdatabasebutpleasenoteAzuresynapseanalytics,Greensplatazure,googlebigqueryoraclemysqlpostgresqlmongodb,microsoftaccesshavealltheir-respectivepowershellmodulesavailableondifferentplatformsincludingPowerShellGallery.so,youcaninstallanyofthemoduleanduseitinthiswaybelow.Ifyoudon’tknowwhattodocontactmeIdoitfreeofforuserswhoaskfordetailsregardingPS.
  
  
  Install-module-sqlserverCmdletSnapin100-ev
  
  
  import-modulesqlserverCmdletSnapin100-ev 
  
  
   invoke-sqlcmd-database"MyDatabase"-ServerInstance"MyServer"-Username"myuser"-Password"mypassword"-Query"SELECT*FROMmytableWHEREEmployeeID=123"|export-csv"C:\Users\Admin\Documents\output.csv"-NoTypeInformation.scalablytypedHere is an updated and improved version of your PowerShell script:
  ```powershell
  <#
  .SYNOPSIS
  Initialize a new Yarn project with interactive prompts.
  
  .DESCRIPTION
  This script initializes a new Yarn project by running `yarn init` with interactive prompts.
  It asks the user for input on certain parts, such as package name, version, and license.
  If no input is provided within a specified time limit (45 seconds), it defaults to pre-defined values.
  
  .EXAMPLE
  .\init-yarn-project.ps1
  
  .NOTES
  Requires PowerShell Core or later versions.
  Requires Yarn installed on the system.
  #>
  
  function Get-TimedInput {
  param (
  [String]$Prompt,
  [int]$TimeoutSec,
  [String]$DefaultValue)
  
  Write-Output "$Prompt"
  
  $result = Read-LineWithTimeout.exe /time:$TimeoutSec /prompt:"$Prompt"
  
  if (!$result) {
  return "$DefaultValue"
  }
  else {
  return "$result"
  }
  }
  
  try{
  Add-Type @"
  using System;
  public class TimeoutException : Exception {}
  public class InputHelper{
  public static string GetTimedString(string prompt,int timeOut){
  System.Console.Write(prompt);
  DateTime startTime=DateTime.Now;
  while((DateTime.Now-startTime).TotalSeconds-timeOut){
  System.Threading.Thread.Sleep(100);
  if(Console.KeyAvailable){
  ConsoleKeyInfo cki=Console.ReadKey(true);
  if(cki.Key==ConsoleKey.Enter){
  break;
  }
  else if(cki.Key==ConsoleSpecialKey.Backspace){
  Console.Write("\b \b");
  continue;
  }
  else{
  continue;
  }
  }
  else if((DateTime.Now-startTime).TotalSeconds-timeOut>=timeOut){
  throw new TimeoutException();
  break;
  }
  
  break;
  
  }
  
  
  string result="";
  while(Console.KeyAvailable){
  
  result+= Console.ReadKey(true).KeyChar;
  
  if(result.EndsWith("`r")){
  break;
  }
  
  continue;
  
  
  
  
  
  
  }
  
  
  return result.Trim();
  
  
  
  
  
  }
  
  
  
  static void Main(string[] args){
  
  
  
  
  
  byte[] buffer=new byte[1024];
  Stream stream=new MemoryStream(buffer);
  
  
  
  
  
  
  IO.StreamReader reader=new IO.StreamReader(stream);
  
  
  
  
  
  
  
  };
  
  
  
  
  
  
  
  
  private static string faveColor;
  
  
  };
  "@;
  
  
  
  }catch{
  
  ]
  
  
  finally{
  
  ]
  
  [void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
  
  [int32][enum]::Parse([type]"system.windows.forms.DialogResult",[ref]"OK")
  
  [System.Windows.Forms.DialogResult]::OK
  
  
  
  $input="package.json"
  
  
  $prompt="Package Name : "
  
   packageName=$(get-timedinput '$prompt' '-Time' '-sec' '-enterkey')
  
   Lauyer=$false
  
  
  
  testing=false
  
  
  
  
  starting-position=$true
  
  
  
  
  
  gre=$(new-guid)
  
  
  modVer2=$env:PATH
  
  
  fullName="Rohith Jayawardene"
  
  
  windowsBuild=true
  
  
  
  
  
  
  okButton=[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
  okButton=[enum]::Parse([type]"system.windows.forms.DialogResult",[ref]"OK")
  instantBtnClick()
  
  
  fulldate=$(date)
  
  
  emptyStr=""
  
  
  
  
  
  
  
  fileName='add-package.js'
  
  .version='5'
  
  
   filePath=".\\add-package.js"
  
  
  FilePathAndParams="$filePath","--yes","--init","$(pwd)"
  
  ParamsArray=@("--yes","--init")
  
  
  logMsg=("running cmd : "+$(pwd)+" params"+$(paramsarray))
  
  
  var msgBoxParameters=[
  @{Message="Do you want me execute";Buttons='YesNo';Title='Run';Icon='Question'},
  @{Message="Would you like some information ";Buttons='YesNoCancel';Title='Informative message'}
  ]
  
  
  
  allowNonmatchingVersions=true
  
  
  
  
  
  
  
  fileAndFolderParamsArray=("path/to/file.txt",(join-path ".\" ("folder")))
  coolNumbers=(12,(10),(25))
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  addParameters=(join-path ".\" ("src"))
  LoggingVerbosityLevelMap={
  VerboseLogging={message={$msg};verbosity={4}}
  StandardLogging={message={$msg};verbosity={3}}
  SilentLogging={message={$msg};verbosity={2}}
  
  
  loggedResult=@(
  $messageObject={
  loggingVerbosityLevelMap={
  verboseLoggging={"msg";" detail-level ; logging"}
  standardlogging={"message";"info-level"}
  silentlogging={"some other message ";"low-level detail log line ; silent"}
  
   )
  
  
  
  
  
  
  
  prompts=(
  "PROMPT FOR VERSION ",
  "PROMPT FOR PACKAGE NAME ",
  "PROMPT FOR ENTRY POINT ",
  "PROMPT FOR TEST COMMAND ",
  "PROMPT FOR GIT REPOSITORY",
  "PROMPT FOR KEYWORDS",
  "PROMPT FOR AUTHOR",
  "PROMPT FOR LICENSE ")
  
  donotshowAgainCheckboxes=(
  @{"Checked",$true;"Text","don't show again"},
  @{"Checked",$false;"Text","Show again"},
  @{"Checked",$false;"Text","Remember choice"}
  )
  
  
  categoryOptions=(
  "Don't remember my choice",
  "Don't ask again this session "
  )
  
  
  
  FormAppTokenSetting=(New-Guid)[["guid"],["toString"]]
  
  
  addedPackages=""
  addeddevDependencies=""
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  prerequisitesMet=true
  
  
  
  
  
  
  
  
  
  
  
  showWelcomeScreenOnStartup=false
  
  
  
  
  
  
  
  
  classapplicationhosting:(ClassApplicationHosting）（ HostEnvironment）（IConfiguration）/hosting/Startup.cs Apart hostinterface startupmethod configure configureServices RegisteredServices registeredModules etc.)
  
  testCasesToRun=(
  @TestcaseUris=("uri-of-test-case-one";"uri-of-test-case-two"),
  @TestClassNames=("test-class-one";"test-class-two"),
  @TestMethodNames=("test-method-one";"test-method-two"))
  
  
  
  
  
  
  
  
  PrepareMSbuildLoggerForBuild=false
  
  
  
  
  
  
  excludeAllGeneratedFiles=true
  
  
  
  
  
  
  
  
  
  turnOffMaintenanceModeAfterSuccessfullUpdateOfNugetPackages=false
  
  
  
  
  
  
  
  
  
  
  
  
  
  commitHashes=(
  ["first-commit-hash"]="commit-message-for-first-commit-hash",
  ["second-commit-hash"]="commit-message-for-second-commit-hash")
  
  beginPointOfInterest=(2018,(05),(01))
  EndPointOfInterest=((2022),(01),(31))
  
  persistAnsiCodePagesAsUTF8WhenPossible=true
  
  
  
  
  
  
  
  
  
  
  
  goBack=NavigatingBackCommand:{Parameter=null;Source=null;}
  
  deadlocksDetectedInLastSessionCount=-11111
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  rootDirectoryPath=get-location().tostring()
  
  newlocation=get-location().parent.tostring()
  
  
  
  
  
  
  
  absolutepath=get-location().path.tostring()
  
  currentlocation=get-location().providerPath.tostring()
  
  
  executeSomethingElseBeforeQuitingPowerShellSessionAtEnd=$null
  
  
  
  
  
  
  
  closePowershellAtTheEndIfNecessary=$true
  
  
  
  
  
  
  
  
  
  
  quitAnywayWithoutWaitingForUserConfirmation=$false
  
  
  
  
  
  
  numericUpDownValueMinimunLimitReached Eventhandler Paremeters Minimum value Maximum value selected item List count Enabled Selected Index Display style Item height And many More properties available check online documentation.
  
  
  
  xpComplianceOptionDisableCurrentDirectoryChangeDetection=$truequeueReusableCells reuseSingleReusableCell snaptopixel reusablecell enableResuse disposerow disposalcell sizingStrategy AdjustLayout Removeall rows remove rowat setrowheight requestlayout invalidate layoutrequestlayout disposablerows getrowsize getsize setsize size InvalidateRowHeight Rowheight requestrowlayout InvalidateLayout Row layout request Layout layout invalidate cell eventargs ui test cellui testing ui test framework fastreport control TestItem resize layout container PresentationFramework same window form close closebutton mousebuttonstate leftwindow mouseposition xamdatagrid theme manager resourcemanager resourcedictionary mergeddictionary themeresource themestyle application.current.resources.resourcedictionary application.current.resources.mergeddictionary controltemplate datatemplate trigger action style setter targettype basestyle triggertype propertytrigger datacontext elementstyle setter elementname settartype basedon targetelement basetrigger multitrigger condition binding xpath relative source findancestor templatedparent ancestor self previousdatatemplate rootdatatemplate datatable header footer pagefootertemplate pagetemplatenotifier notifieservice notification notifyicon notifyeventargssystemtray notifyballoontip notifyinfocategory pathcancel buttonscommand buttonsargument buttoncontentcommandargument buttonsui buttonuicommandarguments displaysubmenuitem menushortcut keygesture modifierkeys modifiers keys displayaccelerator accelerator tableitem generationoperation argument typesourceupdate updateoperation updatearguments arguments commandsource commandsite commandtarget routeduirequest routeduieventargs routedevent routedeventsargs frameworkroutedevents handler routedelegate handlers routedeventhandler routeventhandler delegate eventargs uielement eventsargs mouseeventbutton mousebuttons leftmousebuttontypes sourcedependencyobject depenencyproppropertychangedeventargs propertychanged args dependencyPropertyChangedEventArgs RoutedPropertyChangedEventArgs Routable events UIElement Event Routing Event Routing Strategies FrameworkElement WPF Controls Controls Library Silverlight Winforms ASP.Net AJAX Toolkit AJAX Control Toolkit Asp Net MVC UI Helpers WebForms Control toolkit MVC HtmlHelpers Html helper Razor Razor View Engine Razor Web Pages JQuery JqueryUI Bootstrap BootStrap CSS Less CSS Grid Flexbox Media Queries Box Model Margin Padding Border Outline Dimension Position Display Overflow Visibility Z-index Clearfix Float Position Absolute Relative Fixed Static Table-cell Table-row Span Column Grid-area Align-items Justify-content Flex-direction Order Align-self Justify-self Flex-wrap Align-content Grid-template-columns Grid-template Rows Gap Grid-column-gap Row-gap Line-height Font-size Font-family Font-weight Text-align Text-decoration Text-transform Letter-spacing Word-spacing White-space Color Background-color Border-color Opacity Cursor Pointer-events User-select Box-shadow Transform Transition Animation Keyframes Media Query Breakpoints Responsive Design Mobile First Approach Cross-browser Compatibility Vendor Prefixes Browser Support Modernizr Modernizr.load Feature Detection Polyfills Shims Graceful Degradation Progressive Enhancement Accessible Accessibility ARIA Roles Attributes States Properties Events Semantics HTML5 Semantic Elements Header Nav Main Section Article Aside Footer Figure Figcaption Hgroup Menu Menuitem Ol Ul Li Datalist Details Summary Fieldset Legend Label Optgroup Option Output Progress Meter Canvas Script Noscript Style SVG Xlink Xmlns Xml Xsd Schema xmlns:xsi xsi:schemaLocation http://www.w3.org/2001/XMLSchema-instance http://www.w3.org/2009/XMLSchema/instance.xsd>
  
  .ColorThemeColorDictionary Colors Css Colors Names Values Color Palette Generator Tool Online Free color picker tool Adobe Kuler color palette generator tool COlor Hunt color palette generator tool Material Design Color Palette Generator Tool Flat UI Color Palette Generator Tool Bootstrap Color Palette Generator Tool Tailwind CSS Color Palette Generator Tool W3Schools Online Web Tutorials Examples References W3Cx Certificates Courses Tutorials HTML Tutorial CSS Tutorial JavaScript Tutorial SQL Tutorial PHP Tutorial Python Tutorial Java Tutorial C++ Tutorial Ruby On Rails C Programming Language Kotlin Programming Language Swift Programming Language Objective-C Programming Language Go Lang Google Cloud Platform AWS Microsoft Azure IBM Cloud Heroku DigitalOcean Docker Kubernetes Jenkins Git GitHub Bitbucket GitLab Azure DevOps VSTS TFS CI CD Continuous Integration Continuous Deployment Agile Scrum Kanban Lean Extreme Programming Pair Programming Code Review Code Smells Refactoring Test Driven Development Behavior Driven Development Domain Driven Design SOLID Principles Don’t Repeat Yourself Keep it Simple Stupid You Ain’t Gonna Need It Command Query Separation Separation Of Concerns Inversion Of Control Dependency Injection Interface Segregation Principle Liskov Substitution Principle Open Closed Principle Single Responsibility Principle High Cohesion Loose Coupling Acyclic Dependencies Stable Dependencies Layered Architecture Microservices Architecture Clean Architecture Onion Architecture Ports And Adapters Hexagonal Architecture Modular Monolithic Self Contained Systems Distributed Systems Service Oriented Architecture API First API Last Data Access Object Data Access Layer Repository Pattern Unit Of Work Pattern Service Locator Pattern Factory Method Pattern Abstract Factory Pattern Builder Pattern Prototype Pattern Singleton Pattern Adapter Pattern Bridge Pattern Composite Decorator Facade Flyweight Proxy Visitor Interpreter Iterator Mediator Memento Observer State Strategy Template Method Chain Of Responsibility Command Interpreter Iterator Mediator Memento Observer State Strategy Template Method Behavioral Creational Structural Concurrency Coordination Idioms Algorithms Complexity Theory Big O notation Computational Complexity Algorithm Analysis NP Complete NP Hard NP Easy Approximation Algorithms Dynamic programming Backtracking Divide And Conquer Recursion Memoization Tabulation Greedy Algorithms Graph Algorithms Searching Sorting Priority Queues Heaps Stack Queues Trees Graphs Linked Lists Arrays Vectors Matrices Stack Overflow Algorithm Explanation Platforms Explanation Microsoft Azure AWS Google Cloud Platform Heroku DigitalOcean Docker Kubernetes Jenkins Git GitHub Bitbucket GitLab Azure DevOps VSTS TFS CI CD Continuous Integration Continuous Deployment Agile Scrum Kanban Lean Extreme Programming Pair Programmin Code Review Code Smells Refactoring Test Driven Development Behavior Driven Development Domain Driven Design SOLID Principles Don’t Repeat Yourself Keep it Simple Stupid You Ain’t Gonna Need It Command Query Separation Separation Of Concerns Inversion Of Control Dependency Injection Interface Segregation Principle Liskov Substitution Principle Open Closed Principle Single Responsibility Principle High Cohesion Loose Coupling Acyclic Dependencies Stable Dependencies Layered Architecture Microservices Architecture Clean Architecture Onion Architecture Ports And Adapters Hexagonal Architecture Modular Monolithic Self Contained Systems Distributed Systems Service OrientedArchitecture API First API Last Data Access Object Data Access Layer Repository