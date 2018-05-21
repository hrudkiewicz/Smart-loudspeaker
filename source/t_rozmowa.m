%Przetwarzanie w trybie rozmowa, t�umione s� cz�stotliwo�ci przekraczaj�ce
%�redni� amplitud� cz�stotliwo�ci otoczenia

%wczytywanie pr�bki szumu z otoczenia, program w C/C++ musi nadawa� mu
%uniwersaln� nazw� "szum", w MatLABie cz�stotliwo�� pr�bkowania musi by�
%sta�a i nadawana 441kHz

[s,Fs] = audioread('halas1.wav');             %wczytanie wav'a z szumem
Fs = 44100;                                 %zmiana f pr�bkowania szumu
n = numel(s);                               %liczba wszystkich probek szumu

[f1, wa1] = WA(s, n, Fs);
%f1 - wektor przechowujacy wartosci czestotliwosci
%wa1 - wektor przechowujacy wartosc amplitudy widmowej dla danej czestotliwosci
sr = [];   %tablica do przechowywania wartosci srednich
dif = [];  %tablica do przechowywania wartosci roznic od sredniej
for m = 1:100:(numel(f1)-100)       %podzia� na zakresy po 100 czestotliwosci
    suma = 0;
    for l = m:1:(m+99)            %potem mozna rozszerzyc o 120? zeby zakresy nachodzi�y na siebie (wieksza dokladnosc)
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









    
    


    

    







