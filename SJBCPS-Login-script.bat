@ECHO OFF
SET /p id=Enter Enter your SJBCPS user name:
NET USE H: /DELETE >nul 2>&1
NET USE Q: /DELETE >nul 2>&1
NET USE S: /DELETE >nul 2>&1
NET USE V: /DELETE >nul 2>&1
net use h: \\stjohn.edu.hk\fileshare\home\%id% /user:stjohn\%id% /persistent:yes
net use q: \\stjohn.edu.hk\fileshare\student /user:stjohn\%id% /persistent:yes
net use s: \\stjohn.edu.hk\fileshare\Share /user:stjohn\%id% /persistent:yes
net use v: \\stjohn.edu.hk\fileshare\public /persistent:yes
rundll32 printui.dll PrintUIEntry /in /n\\sjserver\SAMS_RM_13_NONDOMAIN
rundll32 printui.dll PrintUIEntry /in /n\\sjserver\SAMS_RM_14_NONDOMAIN
