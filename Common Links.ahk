#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This is a list of quick links that I use to navigate to common sites. 
; To me, looking for a link through a folder of dozen of bookmarks is cumbersome, so I find it easier to just type out what I need to find.
; This thought process results in a script like this one.

:*:slm/::
Send, ^A https://slm.cloudapps.cisco.com/slm/{#}/contractSummary
return

:*:dcp/::
Send, ^A https://dcp.cisco.com/dcpplat/dcp/landing{#}/timeentryMgmt
return

:*:cdets/::
Send, ^A https://scripts.cisco.com/app/quicker_cdets/
return

:*:alfresco/::
Send, ^A https://gov-us-docs.cisco.com/share/page/site/adc-ps/documentlibrary
return

:*:ioscheck/::
Send, ^A https://tools.cisco.com/security/center/softwarechecker.x
return

:*:psirt/::
Send, ^A https://tools.cisco.com/security/center/publicationListing.x
return

:*:sora/::
Send, ^A https://sora.cisco.com/cas-server/login
return

:*:np/::
Send, ^A https://netprofile-us.cisco.com/netprofile/{#}announcementsScreen
return

:*:jira/::
Send, ^A https://ggsg-tools.cisco.com/jiract/secure/Dashboard.jspa
return

:*:templates/::
Send, ^A http://sficcweb-prd.cisco.com/icportal/welcome.do
return

:*:scripts/::
Send, ^A scripts.cisco.com
return

:*:insights/::
Send, ^A https://teaminsights.cisco.com/
return

:*:internalios/::
Send, ^A https://iswc.cisco.com/security/center/athena.x
return

:*:bci/::
Send, ^A https://bci-c4.cisco.com
return

:*:top/::
Send, ^A https://top-cx.cisco.com/bcs/complianceAndRemediation/
return

:*:docs/::
Send, ^A https://ciscoshare.cisco.com/alfext/ui/{#}/whatsnew
return
