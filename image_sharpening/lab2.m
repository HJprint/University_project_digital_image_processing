I=imread('lena2.jpg');
subplot(231);imshow(I);

%sobel算法
dx=[-1 0 1;-2 0 2;-1 0 1];
dy=dx';
Dx=imfilter(double(I),dx,'symmetric');
Dy=imfilter(double(I),dy,'symmetric');
D1=sqrt(Dx.*Dx+Dy.*Dy);
subplot(232);imshow(D1,[]);title('Sobel锐化图像');

%Priwitt算法
dx2=[-1 0 1;-1 0 1;-1 0 1];
dy2=dx2';
Dx2=imfilter(double(I),dx2,'symmetric');
Dy2=imfilter(double(I),dy2,'symmetric');
D2=sqrt(Dx2.*Dx2+Dy2.*Dy2);
subplot(233);imshow(D2,[]);title('Priwitt锐化图像');

%Roberts算法
bw3 = edge(I,'roberts');%roberts算子锐化
subplot(234);imshow(bw3,[]);title('Roberts锐化图像');

%水平锐化
subplot(235);imshow(Dy,[]);title('水平锐化');

%垂直锐化
subplot(236);imshow(Dx,[]);title('垂直锐化');