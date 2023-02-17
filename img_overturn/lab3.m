I = imread('cameraman.tif');subplot(221);title('原图'); imshow(I)
tform2 = maketform('affine',[1 .5 0;0 1 0;0 0 1]);
J2 = imtransform(I,tform2);
subplot(222);title('垂直错切'); imshow(J2)

tform = maketform('affine',[1 0 0; .5 1 0; 0 0 1]);
J = imtransform(I,tform);
subplot(223);title('水平错切'); imshow(J)