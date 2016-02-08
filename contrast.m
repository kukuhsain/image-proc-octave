clc all; close all; clear all;

a = imread('bluuur.jpg');
figure(1)
imshow(a)

g = double(a);

h = ((255)/(230-50))*(g(:,:,:)-50);
k = uint8(h);

figure(2)
imshow(k)

figure(3)
imhist(a)

figure(4)
imhist(k)
