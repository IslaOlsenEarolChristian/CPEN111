clc;
clf;
clear all;
close all;
pkg load image;

image_2=imread('nature.jpg');
imwrite(image_2,'nature.png');
imgred=image_2;
imgred(:,:,2)=0;
imgred(:,:,3)=0;
imwrite(imgred,'nature_red.png');
imggreen=image_2;
imggreen(:,:,1)=0;
imggreen(:,:,3)=0;
imwrite(imggreen,'nature_green.png');
imgblue=image_2;
imgblue(:,:,1)=0;
imgblue(:,:,2)=0;
imwrite(imgblue,'nature_blue.png');

subplot(2,2,1),imshow(image_2),title('original image');
subplot(2,2,2),imshow(imgred),title('red  image');
subplot(2,2,3),imshow(imggreen),title('green image');
subplot(2,2,4),imshow(imgblue),title('blue image');       %print the original, gray, images.
