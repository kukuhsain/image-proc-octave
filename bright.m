clc all; close all; clear all;

a = imread('nature3.jpg');
figure(1)
imshow(a)

c = a(:,:,:)+50;
d = a(:,:,:)-50;

figure(2)
imshow(c)

figure(3)
imshow(d)

figure(4)
imhist(a)

figure(5)
imhist(c)

figure(6)
imhist(d)
