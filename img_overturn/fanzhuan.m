I=imread('lena.jpg');
[M,N]=size(I);
subplot(221);imshow(I);title('原图');
t1=maketform('affine',[-1 0 0;0 1 0;M 0 1]);
J1=imtransform(I,t1);
subplot(222);imshow(J1);title('水平镜像');

t2=maketform('affine',[1 0 0;0 -1 0;0 N 1]);
J2=imtransform(I,t2);
subplot(223);imshow(J2);title('垂直镜像');

t3=maketform('affine',[-1 0 0;0 -1 0;M N 1]);
J3=imtransform(I,t3);
subplot(224);imshow(J3);title('垂直镜像');