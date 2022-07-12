#"Hello, World!"



<#
Practicing initializing and doing some basic comparing.
#This is how you may initialize variables in PS
[string]$dayOfWeek = (Get-Date -Format "dddd")
[int]$isMonday = $dayOfWeek.CompareTo("Monday")

#If today is Monday
if($isMonday = 0) {
    
    #Output Happy Monday
   "Happy Monday" 
}

#If today is not Monday
else {

    #Output the lack of it being Monday
    "It's not Monday"
}
#>


#Some commands I've explored
<#
$PSVersionTable

Get-ExecutionPolicy

Get-Command

& 'C:\Program Files\Sublime Text\sublime_text.exe'
#>

#Hanging the script tp prevent closing after output
#cmd /c pause

<#
This section will open chrome, go to youtube and select the first video.
This may only work for me since I use adblock,
    there may tend to be an ad in that spot.
To fix that you may just need to hit TAB 2 more times or so
#>

#Opening Google Chrome
& "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 1"

#Waiting for it to open
Start-Sleep -seconds 1

#Selecting the new open windows just in case
$getYoutube = New-Object -ComObject wscript.shell;
$getYoutube.AppActivate('New Tab - Google Chrome')

#Typing Youtube and pressing enter
$getYoutube.SendKeys('youtube.com')
$getYoutube.SendKeys('~')

#Waiting for it to load
Start-Sleep -seconds 3

#Selecting the first video
#Gets us to the hidden 'skip navigation'
for($index = 0 ;$index -lt 3; $index++)
{
    $getYoutube.SendKeys("{TAB}")
    Start-Sleep -seconds 0.5
}

#Selects 'skip navigation'
$getYoutube.SendKeys(" ")
Sleep 1

#Skips over the categories options
for($index = 0 ;$index -lt 22; $index++)
{
    $getYoutube.SendKeys("{TAB}")
    Start-Sleep -seconds 0.5
}

#Presses enter while now on the first video.
$getYoutube.SendKeys("~")