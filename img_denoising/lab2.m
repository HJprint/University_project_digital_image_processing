%形态学方法消除不均衡背景(开操作，先腐蚀，后膨胀)
f=imread('rice.tif');
se=strel('square',6);
figure;subplot(221);imshow(f);title('原始图像');
fo=imopen(f,se);subplot(222);imshow(fo);
f2=imclose(fo,se);subplot(223);imshow(f2);

