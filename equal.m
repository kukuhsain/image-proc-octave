clc all; close all; clear all;

a = imread('nature3.jpg');
figure(1)
imshow(a)

b = rgb2gray(a);
figure(2)
imshow(b)

red = histeq(a(:,:,1));
green = histeq(a(:,:,2));
blue = histeq(a(:,:,3));

f(:,:,1) = red;
f(:,:,2) = green;
f(:,:,3) = blue;

g = histeq(b);

figure(3)
imshow(f)

figure(4)
imhist(a)

figure(5)
imhist(f)

figure(6)
imshow(g)
