%Initialization
clear, close all, clc;

%add paths
addpath ./3/data
addpath ./4

%load info
kid_img = imread('kid.bmp');
homer_img = imread('homer.bmp');
homerBin_img= imread('homerBin.bmp');
[guitarSolo_audio, fs] = audioread('guitarSolo.wav');
english_txt = fileread('english.txt');
english_txt(regexp(english_txt, '[^a-zA-Z]')) = [];
english_txt(size(english_txt,2)) = [];

target1 = audioread('target01 - repeat.wav');

target2 = audioread('target02 - repeatNoise.wav');

disp(sprintf('Exercise 4:'));
disp(sprintf('bmean var'));

[bmean, v] = bmean_var(kid_img);
disp(sprintf('kid_img --> %f --> %f', bmean, v));

[bmean, v] = bmean_var(homer_img);
disp(sprintf('homer_img --> %f --> %f', bmean, v));

[bmean, v] = bmean_var(homerBin_img);
disp(sprintf('homerBin_img --> %f --> %f', bmean, v));

[bmean, v] = bmean_var(guitarSolo_audio);
disp(sprintf('guitarSolo_audio --> %f --> %f', bmean, v));

[bmean, v] = bmean_var(double(english_txt));
disp(sprintf('english_txt --> %f --> %f', bmean, v));

