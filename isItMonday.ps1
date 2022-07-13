#Practicing initializing and doing some basic comparing.
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
