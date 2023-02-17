f=imread('building.tif');
fn1=imnoise(f,'gaussian',0,0.02);%加入高斯噪声
fn2=imnoise(f,'salt & pepper',0.2);%加入椒盐噪声

%均值滤波
w=fspecial('average',[5 5]);%生成一个5*5的均值为1/25的特殊矩阵
%gm1=imfilter(fn1,w);%采用w滤波对fn1进行滤波
gm1=imfilter(fn1,w,'replicate');%'replicate'图像大小通过扩展外边界来扩展
gm2=imfilter(fn2,w,'replicate');%'replicate'图像大小通过扩展外边界来扩展

%中值滤波
gn1=medfilt2(fn1,[5 5],'symmetric');
gn2=medfilt2(fn2,[5 5],'symmetric');

subplot(321);imshow(uint8(fn1));title("高斯原图");
subplot(322);imshow(uint8(fn2));title("椒盐原图");
subplot(323);imshow(uint8(gm1));title("高斯均值");
subplot(324);imshow(uint8(gm2));title("椒盐均值");
subplot(325);imshow(uint8(gn1));title("高斯中值");
subplot(326);imshow(uint8(gn2));title("椒盐中值");