clear all;
clc;
%notas
do=130.81;
doz=138.59;
re=146.83;
rez=155.56;
mi=164.4;
fa=174.6;
faz=185;
sol=196;
solz=207.65;
la=220;
laz=233.08;
si=246.94;
silencio=10000;
%secuencia de tonos en la melodia
F=[silencio,do,do,do,fa,silencio,la,silencio,do,do,do,silencio,fa,silencio,la,la,fa,fa,mi,mi,re,do,silencio,do,do,do,mi,sol,silencio,do,do,do,mi,sol,silencio,doz,rez,doz,si,la,sol,fa];
%tiempo de la nota
dt=[1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5];
%frecuancia de muestreo
fs=44100;

for n1=1:length(F)
    f0=F(n1);    
    T=dt(n1);
    z=nota(f0,T);
    sound(z,fs)
    pause(0.2) %in seconds
end
t=0:length(z)-1/fs;
plot(t',z)
%sound(y,fs)