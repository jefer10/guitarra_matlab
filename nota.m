function  y = nota (x1,D1)
D=D1;
f0=x1;
fs=44100;
T=floor(fs/f0);
N=D*fs;

y=zeros(N,1);
x=2*rand(T,1)-1;

y(1:T)=x';

for n=1:N-T
    y(T+n)=(y(n)+y(n+1))/2.01;
end

end