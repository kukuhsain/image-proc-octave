clc all; close all; clear all;

a = imread('lenna.png');
figure(1)
imshow(a)

nois = imnoise(a,"salt and pepper",0.03);
figure(2)
imshow(nois)

nois2 = imnoise(a,"speckle",0.03);
figure(3)
imshow(nois2)

window = 3;

filt = fspecial('average');
cf = filter2(filt,nois);

figure(4)
imshow(cf)
