I=imread('lena2.jpg');
subplot(221);imshow(I);

%sobel锐化
dx=[-1 0 1;-2 0 2;-1 0 1];
dy=dx';
Dx=imfilter(double(I),dx,'symmetric');
Dy=imfilter(double(I),dy,'symmetric');
D1=sqrt(Dx.*Dx+Dy.*Dy);
subplot(223);imshow(D1,[]);title('Sobel锐化图像');

%拉普拉斯锐化
w=[0 -1 0;-1 4 -1;0 -1 0];
D2=imfilter(double(I),w,'symmetric');
subplot(224);imshow(D2,[]);title('Laplacian锐化图像');
