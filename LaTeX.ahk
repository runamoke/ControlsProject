#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ToolTip, LaTeX, 0, 0

;Change nothing inside this box, EVER!!!
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
Run, C:\Users\jakob\Desktop\arduino.ahk
ExitApp
return
;__________________________________________________________________________

F14::
Send, \documentclass[12pt]{{}article{}}{ENTER}
Send, \usepackage{{}geometry{}}{ENTER}
Send, \geometry{{}a4paper{}}{ENTER}
Send, \geometry{{}margin=1in{}}{ENTER 2}
Send, \usepackage[nodayofweek]{{}datetime{}}{ENTER}
Send, \usepackage{{}float{}}{ENTER}
Send, \usepackage{{}array{}}{ENTER}
Send, \usepackage{{}amssymb{}}{ENTER}
Send, \usepackage{{}graphicx{}}{ENTER}
Send, \usepackage{{}url{}}{ENTER}
Send, \begin{{}document{}}{ENTER 2}\end{{}document{}}{UP}
return

F15::
Send, \begin{{}center{}}{ENTER 2}\end{{}center{}}{UP}
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
F16::
Send, \begin{{}table{}}[H]{ENTER 2}\end{{}table{}}{UP}\centering{ENTER}
Send, \begin{{}tabular{}}{{}{}}{ENTER 2}\end{{}tabular{}}{UP}{LEFT 2}
return

F17::
Send, \begin{{}figure{}}[H]{ENTER 2}\end{{}figure{}}{UP}
Send, \begin{{}center{}}{ENTER 2}\end{{}center{}}{UP}
Send, \includegraphics[width=0.5\textwidth]{{}{}}{ENTER}
Send, \caption{{}{}}{ENTER}\label{{}{}}
return

F18::
Send, \begin{{}equation{}}{ENTER 2}\end{{}equation{}}{UP}
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
F19::
Send, \begin{{}titlepage{}}{ENTER 2}\end{{}titlepage{}}{UP}
Send, \newcommand{{}\HRule{}}{{}\rule{{}\linewidth{}}{{}0.5mm{}}{}}{ENTER}\center{ENTER}
Send, \textsc{{}\LARGE Institution Name{}}\\[1.5cm]{ENTER}
Send, \textsc{{}\Large Major Heading{}}\\[0.5cm]{ENTER}
Send, \textsc{{}\large Minor Heading{}}\\[0.5cm]{ENTER 2}
Send, \HRule\\[0.4cm]{ENTER}
Send, {{}\huge\bfseries An Unnecessarily Convoluted Academic Title{}}\\[0.4cm]{ENTER}
Send, \HRule\\[1.5cm]{ENTER 2}
Send, \begin{{}minipage{}}{{}0.4\textwidth{}}{ENTER}`t\begin{{}flushleft{}}{ENTER}
Send, `t\large{ENTER}\textit{{}Author{}}\\{ENTER}\textsc{{}Jakob Matthies{}}{ENTER}{BackSpace}`t\end{{}flushleft{}}{ENTER}{BackSpace}\end{{}minipage{}}{ENTER}
Send, ~{ENTER}
Send, \begin{{}minipage{}}{{}0.4\textwidth{}}{ENTER}`t\begin{{}flushleft{}}{ENTER}
Send, `t\large{ENTER}\textit{{}Professor{}}\\{ENTER}\textsc{{}NAME{}}{ENTER}{BackSpace}`t\end{{}flushleft{}}{ENTER}{BackSpace}\end{{}minipage{}}{ENTER 2}
Send, \vfill\vfill\vfill{ENTER}{{}\large\today{}}{ENTER 2}
Send, {asc 0037}\vfill\vfill{ENTER}
Send, {asc 0037}\includegraphics[width=0.2\textwidth]{{}placeholder.jpg{}}\\[1cm]{ENTER 2}
Send, \vfill
return

F20::
Send, \begin{{}thebibliography{}}{{}99{}}{ENTER 2}\end{{}thebibliography{}}{UP}\bibitem{{}{}}{LEFT}
return

F21::
Send, \cite{{}{}}{LEFT}
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
