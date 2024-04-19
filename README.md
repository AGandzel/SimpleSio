# Introduction
Tibia Simple Sio. This is an AutoHotkey script that delays the "1" key press in such a way that our Knight character receives healing. This ensures that our Knight reliably receives healing.

## How to Run
You need to have AutoHotkey installed. Download the SimpleSio.ahk file and double-click to run it. The script runs in the background. To exit the script, right-click on the AutoHotkey icon in the taskbar and select Exit. Tested on version v1.1.37.01.

## Problem
The script addresses the issue of pressing the healing key too early.

## Working Principle
The script is designed for the "1" key. It relies on knowledge from TibiaWiki. Knowing that the healing spell delay is 1 second, the healing process can be optimized. The first press of the "1" key triggers immediate healing. At the same time, a timer with a delay is started. The delay value is randomly chosen between 1 second and 1.1 seconds. If we happen to press the healing key prematurely during the timer, the script "holds" the key until the delay time elapses, then releases the key. This process should ensure successful healing.

### Notes
The script has not been directly tested in the field.

---

# Wprowadzenie
Tibia simple sio. Plik ahk który opóźnia działanie przycisku "1" w taki sposób aby nasz Knight dostał siocha. Dzięki temu dostajemy gwarancję, że nasz knight dostanie siocha. 

## Uruchomienie
Należy posiadać zainstalowanego autohotkeya. Pobieramy plik SimpleSio.ahk i dwukrotnie klikając uruchamiamy. Całość programu działa w tle. W celu zakończenia działania należy w pasku zadań kliknąć prawym na ikonkę AutoHotkeya, następnie wybramy opcję Exit.
Testowane działanie na wersji v1.1.37.01

## Problem
Skrypt rozwiązuje problem zbyt wczesnego naciśnięcia przycisku odpowiadającego za sioacha.

## Zasada działania
Skrypt napisany został dla przycisku "1". Całość bazuje na wiedzy z tibiopedii. Wiedząc, że opóźnienie siocha wynosi 1s można sam proces leczenia usprawnić. Pierwsze kliknięcie przycisku "1" spowoduje bezpośrednio leczenie. W tym samym czasie uruchamiany jest timer z opóźnieniem. Wartość opóźnienia wynosi losowo między 1s, a 1.1s. Jeżeli w trakcie trwania timera zdarzy nam się przedwcześnie nacisnąć sio to skrypt "przetrzymuje" naciśnięty klawisz do momentu upłynięcia czasu opóźnienia i następuje "wypuszczenie" przycisku. Taki przebieg sprawy powinien gwarantować uzyskanie leczenia.

### Uwagi
Całość nie została bezpośrednio przetestowana na huncie.
