%用形态学方法去噪
figure;f=imread('shapes.tif');se=strel('square',20);imshow(f);title('原始图像');
figure;
I=imerode(f,se);subplot(221);imshow(I);title('第一次腐蚀');
I1=imdilate(I,se);subplot(222);imshow(I1);title('第一次膨胀');
I2=imdilate(I1,se);subplot(223);imshow(I2);title('第二次膨胀');
I3=imerode(I2,se);subplot(224);imshow(I3);title('第二次腐蚀');
