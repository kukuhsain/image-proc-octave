clc all; clear all; close all;

a = imread('lenna.png');
b = rgb2gray(a);

figure(1)
imshow(b)

sob = edge(b,"sobel");
rob = edge(b,"roberts",100);
prew = edge(b,"prewitt",100);
laog = edge(b,"log",1);
can = edge(b,"canny");

figure(2)
imshow(sob)

figure(3)
imshow(rob)

figure(4)
imshow(prew)

figure(5)
imshow(laog)

figure(6)
imshow(can)

%figure(7)
%imshow(a)
