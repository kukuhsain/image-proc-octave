clc all; close all; clear all;

a = imread('bluuur.jpg');
figure(1)
imshow(a)

b = rgb2gray(a);
figure(2)
imshow(b)

c = a(:,:,:)+50;
d = b(:,:)+50;

g = double(a);

h = ((255)/(230-50))*(g(:,:,:)-50);
k = uint8(h);

thres = 180;

q = b(:,:);

%for m=1:3
	for n=1:300
		for o=1:300
		if (q(n,o) <= thres)
			q(n,o) = 0;
		else q(n,o) = 255;
		endif
		endfor
	endfor
%endfor

size(q)

f = histeq(b);
size(f)

figure(3)
imshow(c)

figure(4)
imhist(a)

figure(5)
imhist(d)

figure(6)
imhist(q)

figure(7)
imshow(q)
