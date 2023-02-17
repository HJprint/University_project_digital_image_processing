I=imread('lena.jpg');
h=size(I);
f1=zeros(h(1)+round(h(2)*tan(pi/6)),h(2),h(3));
for m=1:h(1)
    for n=1:h(2)
        f1(m+round(n*tan(pi/6)),n,1:h(3))=I(m,n,1:h(3));
    end
end
subplot(221);imshow(uint8(I));title("原图");
subplot(222);imshow(uint8(f1));title("水平30度");

f2=zeros(h(1),h(2)+round(h(2)*tan(pi/6)),h(3));
for m=1:h(1)
    for n=1:h(2)
        f2(m,n+round(m*tan(pi/6)),1:h(3))=I(m,n,1:h(3));
    end
end
subplot(223);imshow(uint8(I));title("原图");
subplot(224);imshow(uint8(f2));title("垂直30度");
