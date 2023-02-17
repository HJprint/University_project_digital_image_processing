%线性对比度展宽
clear all；
I=imread('rice.tif');subplot(121);imshow(I);
fa=90;fb=166;ga=27;gb=180;
a=ga/gb;b=(gb-ga)/(fb-fa);c=(255-gb)/(255-ga);

for i=1:size(I,1)
    for j=1:size(I,2)
        if(I(i,j)<fa)
            G(i,j)=a*I(i,j);
        else if ((I(i,j)>fb)&&(I(i,j)<255))
                G(i,j)=gb+c*(I(i,j)-fb);
            else
                G(i,j)=ga+b*(I(i,j)-fa);
            end
        end
    end
end
subplot(122);imshow(G,[]);
