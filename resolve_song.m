function [song_name,song_vector,fs] = resolve_song(songe_name,custom_fs)


notes()

if songe_name == 1
        odetojoy()
        song_name='odetojoy.wav';
    elseif songe_name == 2
        odeto2()
        song_name='odeto2.wav';
    elseif songe_name == 3
        mornmood()
        song_name='mornmood.wav';
    elseif songe_name == 4
        furelise()
        song_name='furelise.wav';
end


fs=custom_fs;
x=[];
SUMnew=0; 

for i=1:size(nf')
    tt=0:(1./fs):(TD./nd(i));
    mynote = na(i)*sin(2*pi*nf(i)*tt);
   

    for num=2:12
        harmonic = ((1/num)*na(i))*sin(2*pi*(nf(i)*num)*tt); 
        mynote=mynote+harmonic;

    end
         mynote= mynote .* exp(10*-tt);
       

    x=[x;mynote'];

end
% x=movmean(x,10)

plot(x)
 song_vector=x;


end

