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

window = 7;

red = medfilt2(nois2(:,:,1),[window window]);
green = medfilt2(nois2(:,:,2),[window window]);
blue = medfilt2(nois2(:,:,3),[window window]);

hasil = cat(3,red,green,blue);

figure(4)
imshow(hasil)

