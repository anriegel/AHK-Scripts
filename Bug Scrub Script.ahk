#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Exclude bug, keyword is //exclude
; This will create a pop up window which will prompt for user input. 
:*://exclude::                           ; <--- Modify this line if you want to change the shortcut
Gui, New
Gui, Add, Text,,As per...
Gui, Add, Edit, vReason
Gui, Add, Text,,Futher explanation:
Gui, Add, Edit, vExplain
Gui, Add, Button, Default gOK0, OK
Gui, Show
Return
;InputBox, Exclude, Exclusion Reason, As per...
OK0:
Gui, Submit
Send, Exclude: `nAs per %Reason% `n`n%Explain%
return

; Include bug, keyword is //include
; This will create a pop up window which will prompt for user input. 
:*://include::                           ; <--- Modify this line if you want to change the shortcut
Gui, New
Gui, Add, DropDownList, vFound1, internally|externally
Gui, Add, Text,,Number of SRs
Gui, Add, Edit, vSR1
Gui, Add, Button, Default gOK1, OK
Gui, Show
return
OK1:
Gui, Submit
Send, This issue is being included because it may have an operational impact. `n`nDescription `n`nTrigger `n`nWorkaround `n`nThe issue is %Found1% found with %SR1% service requests.
return

; Include info only bug, keyword is //info
; This will create a pop up window which will prompt for user input. 
:*://info::                           ; <--- Modify this line if you want to change the shortcut
Gui, New
Gui, Add, DropDownList, vFound2, internally|externally
Gui, Add, Text,,Number of SRs
Gui, Add, Edit, vSR2
Gui, Add, Button, Default gOK2, OK
Gui, Show
return
OK2:
Gui, Submit
Send, Including this issue for informational purposes only. This issue is being included because it may have an operational impact. `n`nDescription `n`nTrigger `n`nWorkaround `n`nThe issue is %Found2% found with %SR2% service requests.
return

; Exclude not customer visible bugs, keyword is //notvis
; This will not prompt for user input, strictly for excluding with the reason as not customer visible.
:*://notvis::                           ; <--- Modify this line if you want to change the shortcut
Send, Exclude: `nAs per customer visibility. This issue is not customer visible.