

Gui, Add, Text,, Width:
Gui, Add, Text,, Height:
Gui, Add, Edit, vWidth ym
Gui, Add, Edit, vHeight
Gui, Add, Button, default, OK 
Gui, Show,, Eternal Resizer
return

ButtonOK:
Gui, Submit, NoHide  ; Save the input from the user to each control's associated variable.
if (Width < 500 or Height < 500){ 
MsgBox Use minimum values of 500, instead found width "%Width%" and height "%Height%" instead.
}
if (WinExist(ahk_exe Eternal.exe)){
WinMove, ahk_exe Eternal.exe,, 0, 0, %Width%, %Height%
}else{
MsgBox Eternal.exe is not found
}
return

GuiClose:
ExitApp