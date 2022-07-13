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
$getYoutube = New-Object -ComObject wscript.shell
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