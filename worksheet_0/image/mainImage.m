%Initialization
clear, close all, clc;

%addpaths
addpath ./5
addpath ./6
addpath ./7
addpath ./8
addpath ./9

Y = imread('image008.jpg');
imfinfo('image008.jpg')
%image(Y)
%image(higher_red(Y, 2));
%image(mosaic(Y, 35));
colormap(gray(256));
gray_image = gray_levels(Y);
%image(gray_image);
bin_image = bin(gray_image, 100);
%image(bin_image);
border_image = border(bin_image);
image(border_image);
axis off

imwrite( border_image, 'final_image.bmp');
