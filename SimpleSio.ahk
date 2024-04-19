#Persistent
SetBatchLines, -1

FirstPress := true
SecondPressQueued := false
TimerActive := false

1::
    Random, randDelay, 1000, 1100  ; Losowe opóźnienie między 1000 a 1100 ms
    if (FirstPress)  ; Jeśli to pierwsze naciśnięcie
    {
	Suspend,On ; Wylaczenie przechwytywania klawiszy
        Send, 1  ; Wyślij "1" po zakończeniu timera
	Suspend,Off ; Wlaczenie przechwytywania klawiszy
        FirstPress := false  ; Zablokuj kolejne natychmiastowe naciśnięcia
        SetTimer, ResetFirstPress, -%randDelay%  ; Ustaw timer do resetowania flagi FirstPress
        TimerActive := true  ; Oznacz, że timer jest aktywny
    }
    else if (!SecondPressQueued && TimerActive)  ; Jeśli drugie naciśnięcie i timer jest aktywny
    {
        SecondPressQueued := true  ; Zaznacz, że drugie naciśnięcie zostało zarejestrowane
    }
return

ResetFirstPress:
    if (SecondPressQueued)  ; Jeśli drugie naciśnięcie zostało zarejestrowane
    {
	Suspend,On ; Wylaczenie przechwytywania klawiszy
        Send, 1  ; Wyślij "1" po zakończeniu timera
	Suspend,Off ; Wlaczenie przechwytywania klawiszy
        SecondPressQueued := false  ; Reset flagi drugiego naciśnięcia
        SetTimer, ResetFirstPress, -%randDelay%  ; Ustaw timer ponownie
    }
    else  ; Jeśli nie ma drugiego naciśnięcia
    {
        FirstPress := true  ; Zresetuj status pierwszego naciśnięcia
        TimerActive := false  ; Zresetuj status timera
    }
return
