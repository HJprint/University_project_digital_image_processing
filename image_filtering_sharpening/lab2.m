%Sobel锐化
f=imread('building.tif');
subplot(121);imshow(f);title('原图');
h=fspecial('Sobel');
g1=imfilter(f,h);
subplot(122);imshow(g1);title('Sobel锐化');