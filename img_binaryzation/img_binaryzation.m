figure(1)
%采用im2bw二值化图像
f=imread('rice.tif');subplot(221); imshow(f);title('原图');
subplot(222); bw1=im2bw(f);imshow(bw1);title('使用0.5作为门槛时的二值图像');

%采用for循环二值化图像
for i=1:257
    for j=1:257
        if f(i,j)<=150
            f(i,j)=0;
        else
            f(i,j)=255;
        end
    end
end
subplot(223);imshow(f);title('使用150作为划分的二值图像');

% %灰度直方图
 I = imread('rice.tif'); subplot(224);imhist(I);title('灰度直方图');


 figure(2)
%--------------------------------------
% 输入图片，图片要求为灰度图或者二值图
%用自带函数imhist实现；
clc;
clear all;
i=imread('2.jpg');
if(numel(size(i))==3) %判断图像是否非灰度图像；
    i=rgb2gray(i);
end
subplot(221);imhist(i);title('imhist');

%用bar画图函数实现；
H=imhist(i);h=0:5:255;
subplot(222);bar(h,H(1:5:256)); axis([0 255 0 1500]); title('bar');

%用stem函数实现
H=imhist(i);h=0:5:255;
subplot(223);stem(h,H(1:5:256),'filled'); axis([0 255 0 1500]);title('stem');

%用plot函数实现
H=imhist(i);h=0:255;
subplot(224);plot(h,H,'--or') ; axis([0 255 0 1500]);title('plot');