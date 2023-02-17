%求对比度
f = imread('rice.tif');
[m,n] = size(f);
g = padarray(f,[1 1],'symmetric','both');
[r,c] = size(g);%求扩展后图像的行数r和列数c
g = double(g);  %把扩展后图像转变成双精度浮点数
k=0;  %定义一数值k，初始值为0
%4近邻
for i=2:r-1
for j=2:c-1
    k = k+(g(i,j-1)-g(i,j))^2+(g(i-1,j)-g(i,j))^2+(g(i,j+1)-g(i,j))^2+(g(i+1,j)-g(i,j))^2;
end
end
cg = k/(4*(m-2)*(n-2)+3*(2*(m-2)+2*(n-2))+4*2);%求原始图像对比度
display(cg);
