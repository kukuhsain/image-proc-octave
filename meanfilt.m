clc all; close all; clear all;

a = imread('lenna.png');
figure(1)
imshow(a)

%nois = imnoise(a,"salt and pepper",0.03);
%figure(2)
%imshow(nois)

nois2 = imnoise(a,"speckle",0.03);
figure(3)
imshow(nois2)

window = 7;

hasil = a;

for h=1:3
	for k=1:length(a(1,:,1))-(window-1)
		for l=1:length(a(1,:,1))-(window-1)
			for m=0:window-1
				for n=0:window-1
					perkalian(m+1,n+1) = nois2(l+n,k+n,h)*(1/(window^2));
				endfor
			endfor
			jumlah = sum(sum(perkalian));
			hasil(l+1,k+1,h) = jumlah;
		endfor
	endfor
endfor	

figure(4)
imshow(hasil)

