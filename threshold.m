clc all; close all; clear all;

a = imread('nature2.jpg');
figure(1)
imshow(a)

b = rgb2gray(a);
figure(2)
imshow(b)

thres = 128;

q = b(:,:);

for n=1:length(b(:,1))
	for o=1:length(b(1,:))
		if (q(n,o) <= thres)
			q(n,o) = 0;
		else q(n,o) = 255;
		endif
	endfor
endfor

figure(3)
imshow(q)

figure(4)
imhist(b)

figure(5)
imhist(q)
