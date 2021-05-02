#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ToolTip, Default, 0, 0

;Change nothing inside this box. This is volume control.
;_________________________________________________
F22::											;|		
Send {Volume_Mute}								;|
return											;|
												;|
F23::											;|
Send {Volume_Up}								;|
return											;|
												;|
F24::											;|
Send {Volume_Down}								;|
return											;|
;_________________________________________________


;_________________________________________________________________________
F13::
Run, C:\Users\jakob\Desktop\LaTeX.ahk
ExitApp
return
;__________________________________________________________________________

F14::
Run, C:\Users\jakob\Documents\01 - TTU Spring 2021\Thermal-Fluids\BaroFix.m
Sleep, 9000
Run, C:\Users\jakob\Documents\01 - TTU Spring 2021\Thermal-Fluids\BaroFix.m
Sleep, 700
Send, {F5}
return

F15::
alf := 0.00001022
bet := 0.000101
InputBox, temp, BaroFix Dialogue 1, Enter the temperature in Fahrenheit.
InputBox, height, BaroFix Dialogue 2, Enter the height reading form the barometer.
Tscale := temp - 62
Thg := temp - 32
hcorr := ((alf * Tscale - bet * Thg)/(1 + bet * Thg)) * height
hnew := height + hcorr
Clipboard := hnew
return

F16::
SendInput, ^c
Sleep, 50
Run, https://duckduckgo.com/ ;change this URL to search engine of choice
Sleep, 1500
SendInput, ^v
SendInput, {Enter}
return

F17::
Run, https://ttu.blackboard.com/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_1_1
return

F18::
Run, C:\Users\jakob\Documents\01 - TTU Spring 2021
return

F19::
Run, https://www.hulu.com/hub/home
return

F20::
Run, https://play.hbomax.com/page/urn:hbo:page:home
return

F21::
Run, https://www.youtube.com/
return

