#"Hello, World!"

#This is how you may initialize variables in PS
[string]$dayOfWeek = (Get-Date -Format "dddd")

#If today is Monday
if($dayOfWeek = "Monday") {
    
    #Output Happy Monday
   "Happy Monday" 
}

#If today is not Monday
else {

    #Output the lack of it being Monday
    "It's not Monday"
}

#Some commands I've explored
<#
$PSVersionTable

Get-ExecutionPolicy

Get-Command

& 'C:\Program Files\Sublime Text\sublime_text.exe'
#>

#Hanging the script tp prevent closing after output
cmd /c pause
