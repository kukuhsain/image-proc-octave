clc all; clear all; close all;

a = imread('dua.jpg');
b = rgb2gray(a);

figure(1)
imshow(b)

sob = edge(b,"sobel");
rob = edge(b,"roberts");
prew = edge(b,"prewitt");
laog = edge(b,"log");
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

figure(7)
imshow(a)
