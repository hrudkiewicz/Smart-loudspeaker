1)pobranie pr�bki szumu z otoczenia
2)zmiana fp szumu na 44100 Hz
3)fft szumu ->wektor czestotliwosci, wektor amplitudy widmowej dla danych czestotliwosci
-srednia wartosc dla czestotliwosci halasu 0,1; 0,2; 0,3.... [jak ustawic koncowa?]
4)srednia wartosc amplitudy widmowej dla srednich (0,1  0,2  0,3..) probek halasu <---

TRYB ROZMOWA (tlumienie czestotliwosci piosenki powyzej sredniej)
5)liczenie roznicy aplitudy dla danej czestotliwosci probki halasu (0,1  0,2...) od wartosci sredniej (ujemne s� poni�ej �redniej)
6)wczytanie piosenki (osobno dwa kanaly, bo jest w trybie stereo - ponizsze instrukcje s� dla jednego kana�u, dla drugiego analogicznie)
7)podzia� piosenki(kana�u) na okna czasowe [JAKA DLUGOSC OKNA? dlugosc piosenki podzielic na np. 1000 rownych segmentow?]
8)fft okna piosenki ->wektor f, wektor wa
-srednia wartosc aplitudy dla zaokragladych czestotliwosci piosenki 0,1  0,2  0,3...
9)ROBOCZA WERSJA p�tla po wektorze czestotliwosci w oknie: jezeli f piosenki natrafi na f halasu -> sprawdzenie jak halas odbiega od sredniej halasu, jezeli halas ponizej sredniej to zmniejszenie wa czestotliwosci piosenki o tyle
-tlumienie amplitudy o dana wartosc dla wszystkich czestotliwosci z danego zakresu 0,1  0,2  0,3...
10)po zmianie po wszystkich oknach ->to samo dla drugiego kana�u
11)u�rednienie wyniku dla odpowiadajacych sobie probek obu kana��w -> przetworzenie na MONO
12)wyrenderowanie piosenki