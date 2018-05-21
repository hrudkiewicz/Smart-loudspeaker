
function [f, wa] = WA(syg, nfft, fp)

% paramety wejsciowe:

% syg - sygnal wejsciowy,
% nfft - dlugosc DFT
% fp - czestotliwosc probkowania sygnalu syg,
if isempty(nfft)
    nfft=length(syg);
end;
    TF=fft(syg,nfft);
    
if mod(nfft,2)==0
    wa=2*abs(TF(1:(nfft/2+1)))/nfft;
    f=(0:nfft/2)*(fp/nfft);
else
    wa=2*abs(TF(1:((nfft+1)/2)))/nfft;
    f=(0:(((nfft+1)/2)-1))*(fp/nfft);   
end;
