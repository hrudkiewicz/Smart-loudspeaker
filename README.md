1)pobranie próbki szumu z otoczenia
2)zmiana fp szumu na 44100 Hz
3)fft szumu ->wektor czestotliwosci, wektor amplitudy widmowej dla danych czestotliwosci
-srednia wartosc dla czestotliwosci halasu 0,1; 0,2; 0,3.... [jak ustawic koncowa?]
4)srednia wartosc amplitudy widmowej dla srednich (0,1  0,2  0,3..) probek halasu <---

TRYB ROZMOWA (tlumienie czestotliwosci piosenki powyzej sredniej)
5)liczenie roznicy aplitudy dla danej czestotliwosci probki halasu (0,1  0,2...) od wartosci sredniej (ujemne s¹ poni¿ej œredniej)
6)wczytanie piosenki (osobno dwa kanaly, bo jest w trybie stereo - ponizsze instrukcje s¹ dla jednego kana³u, dla drugiego analogicznie)
7)podzia³ piosenki(kana³u) na okna czasowe [JAKA DLUGOSC OKNA? dlugosc piosenki podzielic na np. 1000 rownych segmentow?]
8)fft okna piosenki ->wektor f, wektor wa
-srednia wartosc aplitudy dla zaokragladych czestotliwosci piosenki 0,1  0,2  0,3...
9)ROBOCZA WERSJA pêtla po wektorze czestotliwosci w oknie: jezeli f piosenki natrafi na f halasu -> sprawdzenie jak halas odbiega od sredniej halasu, jezeli halas ponizej sredniej to zmniejszenie wa czestotliwosci piosenki o tyle
-tlumienie amplitudy o dana wartosc dla wszystkich czestotliwosci z danego zakresu 0,1  0,2  0,3...
10)po zmianie po wszystkich oknach ->to samo dla drugiego kana³u
11)uœrednienie wyniku dla odpowiadajacych sobie probek obu kana³ów -> przetworzenie na MONO
12)wyrenderowanie piosenki