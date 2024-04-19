#Persistent
SetBatchLines, -1

firstPress := true
timerActive := false
secondPressQueued := false

Random, randDelay, 1000, 1100  ; Losowe opóźnienie między 1000 a 1100 ms

1::
    if (firstPress)  ; Jeśli to pierwsze naciśnięcie
    {
	Suspend,On ; Wylaczenie przechwytywania klawiszy
        Send, 1  ; Wyślij "1" po zakończeniu timera
	Suspend,Off ; Wlaczenie przechwytywania klawiszy
        firstPress := false  ; Zablokuj kolejne natychmiastowe naciśnięcia
        SetTimer, ResetPress, -%randDelay%  ; Ustaw timer do resetowania flag
        timerActive := true  ; Oznacz, że timer jest aktywny
    }
    else if (timerActive && !secondPressQueued)  ; Jeśli timer jest aktywny, ale drugie naciśnięcie nie zostało jeszcze zainicjowane
    {
        secondPressQueued := true  ; Zaznacz, że drugie naciśnięcie zostało zainicjowane
    }
return

ResetPress:
    if (secondPressQueued)  ; Jeśli drugie naciśnięcie zostało zainicjowane
    {
	Suspend,On ; Wylaczenie przechwytywania klawiszy
        Send, 1  ; Wyślij "1" po zakończeniu timera
	Suspend,Off ; Wlaczenie przechwytywania klawiszy
    }
    firstPress := true  ; Zresetuj flagę pierwszego naciśnięcia
    timerActive := false  ; Zresetuj status timera
    secondPressQueued := false  ; Zresetuj flagę drugiego naciśnięcia
return
