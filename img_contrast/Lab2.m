%��Աȶ�
f = imread('rice.tif');
[m,n] = size(f);
g = padarray(f,[1 1],'symmetric','both');
[r,c] = size(g);%����չ��ͼ�������r������c
g = double(g);  %����չ��ͼ��ת���˫���ȸ�����
k=0;  %����һ��ֵk����ʼֵΪ0
%4����
for i=2:r-1
for j=2:c-1
    k = k+(g(i,j-1)-g(i,j))^2+(g(i-1,j)-g(i,j))^2+(g(i,j+1)-g(i,j))^2+(g(i+1,j)-g(i,j))^2;
end
end
cg = k/(4*(m-2)*(n-2)+3*(2*(m-2)+2*(n-2))+4*2);%��ԭʼͼ��Աȶ�
display(cg);
