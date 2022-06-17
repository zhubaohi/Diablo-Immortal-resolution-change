#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;Made by r/zhubaohi



Loop{
    SysGet, Mon2, Monitor
    ;Process, Exist, HeroesOfTheStorm_x64.exe ;detect if Hots is running
    ;hots := ErrorLevel   
    ;For Heroes of the storm support, uncomment line 11 and 12 
    Process, Exist, DiabloImmortal.exe ;detect if DI is running 
    di := ErrorLevel
    if (hots or di){               ;if either game is running
      if (Mon2Right == 5120){      ;and the resolution is currently 5k
        5to3()                     ;change it to 3k
        
      }

    }else{                         ;otherwise when both game is not running
      if (Mon2Right == 3440){      ;and the resolution is 3k
        3to5()                     ;change it back to 5k 
        
      }
    }
        
   Sleep 1000

}

5to3(){                           ;5k to 3k
  Run, ms-settings:display        ;open system settings
	SetTitleMatchMode, 2            
  Sleep 500
  WinMove, Settings, , 100, 100, 500, 500
  WinActivate, Settings
	Loop, 10{                       ;operate within windows 11 Settings
    Send, `t
    Sleep 30
  }
	Send {Enter}
  Sleep 30
  Send {Down}
  Sleep 30
  Send {Down}
  Sleep 30
  Send {Enter}
  Sleep 500
  Send {Left}
  Sleep 30
  Send {Enter}
  Sleep 500
  Send !{f4}
}

3to5(){
  Run, ms-settings:display
	SetTitleMatchMode, 2
  Sleep 500
  WinMove, Settings, , 100, 100, 500, 500
  WinActivate, Settings
	Loop, 10{
    Send, `t
    Sleep 30
  }
	Send {Enter}
  Sleep 30
  Send {Up}
  Sleep 30
  Send {Up}
  Sleep 30
  Send {Enter}
  Sleep 500
  Send {Left}
  Sleep 30
  Send {Enter}
  Sleep 500
  Send !{f4}
}



