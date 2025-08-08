#SingleInstance, force
#Persistent
#NoEnv
SetStoreCapsLockMode Off

Loop {
	WinGetActiveTitle, Title
	
	if (1 = 2)
	{
	}		
	
	; AUTOBUILD
	else if (GetKeyState("LButton", "P") and GetKeyState("n", "P") and (!!InStr(Title, "SquadGame")))
	{
		; wait for "LButton" to be released
		while (GetKeyState("LButton", "P"))
		{
			sleep, 10
		}
		Send, {LButton down}
		while (GetKeyState("n", "P"))
		{
			sleep, 10
		}

		; AUTOBUILD STOP
		while  (!GetKeyState("1", "P") and !GetKeyState("2", "P") and !GetKeyState("3", "P") and !GetKeyState("4", "P") and !GetKeyState("5", "P") and !GetKeyState("6", "P") and !GetKeyState("r", "P") and !GetKeyState("f", "P") and !GetKeyState("n", "P") and !GetKeyState("x", "P") and !GetKeyState("z", "P") and !GetKeyState("LShift", "P") and !GetKeyState("SPACE", "P") and !GetKeyState("RButton", "P"))
		{
			Sleep, 20
		}
		Send, {LButton up}
	}
	;  END OF AUTOBUILD CODE BLOCK
	
	; AUTODIG
	else if (GetKeyState("RButton", "P") and GetKeyState("n", "P") and (!!InStr(Title, "SquadGame")))
	{
		; wait for "RButton" to be released
		while (GetKeyState("RButton", "P"))
		{
			sleep, 10
		}
		Send, {RButton down}
		while (GetKeyState("n", "P"))
		{
			sleep, 10
		}
		
		; AUTODIG STOP
		while  (!GetKeyState("1", "P") and !GetKeyState("2", "P") and !GetKeyState("3", "P") and !GetKeyState("4", "P") and !GetKeyState("5", "P") and !GetKeyState("6", "P") and !GetKeyState("r", "P") and !GetKeyState("f", "P") and !GetKeyState("n", "P") and !GetKeyState("x", "P") and !GetKeyState("z", "P") and !GetKeyState("LShift", "P") and !GetKeyState("SPACE", "P") and !GetKeyState("LButton", "P"))
		{
			Sleep, 20
		}
		Send, {RButton up}
	}
	;  END OF AUTODIG CODE BLOCK
	
	; AUTORUN
	else if (GetKeyState("w", "P") and GetKeyState("n", "P") and !GetKeyState("LButton", "P") and !GetKeyState("RButton", "P") and (!!InStr(Title, "SquadGame")))
	{
		; wait for "w" to be released
		while (GetKeyState("w", "P"))
		{
			sleep, 20
		}
		; UNPRESS CAPS LOCK
		if GetKeyState("CapsLock", "T")  ; Check if Caps Lock is currently on
		{
			SetCapsLockState, Off  ; Turn Caps Lock off
			Send, {m}{m}
		}
		;  END OF UNPRESS CAPS LOCK CODE BLOCK
		Send, {w down}
		sleep, 20
		Send, {Shift down}
		sleep, 20
		Send, {Shift up}
		while (GetKeyState("n", "P"))
		{
			sleep, 20
		}
		
		; AUTORUN STOP
		while (!GetKeyState("s", "P") and !GetKeyState("n", "P") and GetKeyState("w", "U"))
		{
			Sleep, 20
		}
		Send, {Shift up}
		sleep, 20
		Send, {w up}
	}
	;  END OF AUTORUN CODE BLOCK
	
	; FAST USE OF EMOTION
	else if ((GetKeyState("MButton", "P") and (!!InStr(Title, "SquadGame"))))
	{
		Send, {x down}
		Sleep, 60
		Send, {x up}
		while (GetKeyState("MButton", "P"))
		{
			Sleep, 20
		}
	}
	;  END OF FAST USE OF EMOTION CODE BLOCK
	
	; HOLD F FOR PUSHING VEHICLE
	else if ((GetKeyState("LShift", "P") and (GetKeyState("n", "P") and (!!InStr(Title, "SquadGame")))))
	{
		Send, {f down}
		while  (!GetKeyState("1", "P") and !GetKeyState("2", "P") and !GetKeyState("3", "P") and !GetKeyState("4", "P") and !GetKeyState("5", "P") and !GetKeyState("6", "P") and !GetKeyState("r", "P") and GetKeyState("f", "P") and !GetKeyState("x", "P") and !GetKeyState("z", "P") and !GetKeyState("LShift", "P") and !GetKeyState("SPACE", "P") and !GetKeyState("RButton", "P") and !GetKeyState("a", "P") and !GetKeyState("s", "P") and !GetKeyState("d", "P"))
		{
			Sleep, 250
		}
		Send, {f up}
	}
	;  END OF PUSH VEHICLE CODE BLOCK
	
	; FAST RESUPPLY
	else if ((GetKeyState("insert", "P") and (!!InStr(Title, "SquadGame"))))
	{

		Send, {f down}
		sleep, 40
		MouseGetPos, origX, origY
		MouseMove, 140, 500, 0, R
		sleep, 20
		Click
		MouseMove, -140, -500, 0, R
		MouseMove, 140, -500, 0, R
		sleep, 20
		Click
		Send, {5}
		sleep, 20
		Send, {f up}
		
		Send, {f down}
		sleep, 40
		MouseGetPos, origX, origY
		MouseMove, 140, 500, 0, R
		sleep, 20
		Click
		MouseMove, -140, -500, 0, R
		MouseMove, 500, -500, 0, R
		sleep, 20
		Click
		Send, {5}
		Send, {f up}
		sleep, 20
		
		Send, {f down}
		sleep, 40
		MouseGetPos, origX, origY
		MouseMove, 140, 500, 0, R
		sleep, 20
		Click
		MouseMove, -140, -500, 0, R
		MouseMove, 500, -140, 0, R
		sleep, 20
		Click
		Send, {5}
		Send, {f up}
		sleep, 20
	}
	;  END OF FAST RESUPPLY CODE BLOCK
	
	; MUTE ON TALK
	else if ((GetKeyState("v", "P") or GetKeyState("b", "P") or GetKeyState("g", "P") or GetKeyState("Numpad0", "P") or GetKeyState("Numpad1", "P") or GetKeyState("Numpad2", "P") or GetKeyState("Numpad3", "P") or GetKeyState("Numpad4", "P") or GetKeyState("Numpad5", "P") or GetKeyState("Numpad6", "P") or GetKeyState("Numpad7", "P") or GetKeyState("Numpad8", "P") or GetKeyState("Numpad9", "P")) and GetKeyState("ScrollLock", "T") and (!!InStr(Title, "SquadGame")))
	{
		SoundSet, 1, , mute
	}
	else
	{
		if GetKeyState("ScrollLock", "T")
		{
		SoundSet, 0, , mute
		}
	}
	;  END OF MUTE ON TALK CODE BLOCK
	
	sleep, 20
}
