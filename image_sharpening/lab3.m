I=imread('lena2.jpg');
subplot(221);imshow(I);

%Roberts算法
bw1 = edge(I,'roberts');%roberts算子锐化
subplot(222);imshow(bw1,[]);title('Roberts锐化图像');

%Priwitt算法
bw2 = edge(I,'prewitt');%roberts算子锐化
subplot(223);imshow(bw2,[]);title('Priwitt锐化图像');

%sobel算法
bw3 = edge(I,'sobel');%roberts算子锐化
subplot(224);imshow(bw3,[]);title('Sobel锐化图像');
