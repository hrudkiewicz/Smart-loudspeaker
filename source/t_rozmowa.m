%Przetwarzanie w trybie rozmowa, t³umione s¹ czêstotliwoœci przekraczaj¹ce
%œredni¹ amplitudê czêstotliwoœci otoczenia

%wczytywanie próbki szumu z otoczenia, program w C/C++ musi nadawaæ mu
%uniwersaln¹ nazwê "szum", w MatLABie czêstotliwoœæ próbkowania musi byæ
%sta³a i nadawana 441kHz

[s,Fs] = audioread('halas1.wav');             %wczytanie wav'a z szumem
Fs = 44100;                                 %zmiana f próbkowania szumu
n = numel(s);                               %liczba wszystkich probek szumu

[f1, wa1] = WA(s, n, Fs);
%f1 - wektor przechowujacy wartosci czestotliwosci
%wa1 - wektor przechowujacy wartosc amplitudy widmowej dla danej czestotliwosci
sr = [];   %tablica do przechowywania wartosci srednich
dif = [];  %tablica do przechowywania wartosci roznic od sredniej
for m = 1:100:(numel(f1)-100)       %podzia³ na zakresy po 100 czestotliwosci
    suma = 0;
    for l = m:1:(m+99)            %potem mozna rozszerzyc o 120? zeby zakresy nachodzi³y na siebie (wieksza dokladnosc)
        suma = suma + sum(wa1(m));
    end
    if isempty(sr)
        i=1;
        sr(i) = suma/100;       %sr przechowuje srednie wartosci dla zakresow
    else
        i = i+1;
        sr(i) = suma/100;       %tablica wartosci srednich dla zakresow;
    end
    %sprawdzanie czy wartosci z zakresu sa powyzej/ponizej sredniej i o ile
    for l = m:+1:(m+99) 
        dif(l) = wa1(l)-sr(i);
    end    
end









    
    


    

    







