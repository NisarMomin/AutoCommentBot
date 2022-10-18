###AUTO COMMENT BOT FOR YOUTUBE - NEEDS IMPROVEMENT CURRENT ACCURACY 75%####
###SET CHROME ZOOM LEVEL TO 35% & DISABLE THE MEDIA KEYBOARD HANDLING using url> chrome://flags/#hardware-media-key-handling ###

$wShell = New-Object -ComObject wscript.shell

###Enter urls of youtube videos in urls.txt file###

foreach ($vid in (Get-Content urls.txt)) { start-process $vid
sleep 15 #depends on your internet speed mine is 20 mbps
$ProcessTerm="chrome"
$FindProcess = Get-Process | Where-Object {$_.MainWindowTitle -like "*$processterm*"}
$actID = Get-Process -ID $FindProcess.ID | Select-Object MainWindowTitle
Set-Clipboard "Add a comment"
$wShell.AppActivate($actID.MainWindowTitle)
sleep 2 
$wShell.SendKeys('^f')
sleep 2
$wShell.SendKeys('^v')
sleep 2
$wShell.SendKeys('^~')
sleep 2
set-clipboard "Thank you so much for this educational video, I learned so much. I love this channel" #enter your comment
sleep 2
$wShell.SendKeys('^v')
sleep 2
$wShell.SendKeys('^~')
sleep 3
$wShell.SendKeys("^w")
sleep 2
} 
