%ֱ��ͼ���⻯
I = imread('pollen.tif');
subplot(221);imshow(I);
subplot(222);imhist(I);
G = histeq(I);
subplot(223);imshow(G);
subplot(224);imhist(G);

