%Initialization
clear, close all, clc;

%add paths
addpath ./3/data
addpath ./5

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

disp(sprintf('Exercise 5:'));
subplot(2,3,1)
[entropy, freq] = ent(double(kid_img));
entropy
[entropy, freq] = entropy_grouped(double(kid_img), 2, 2);
entropy

[entropy, freq] = ent(double(homer_img));
entropy
[entropy, freq] = entropy_grouped(double(homer_img), 2, 2);
entropy

[entropy, freq] = ent(double(homerBin_img));
entropy
[entropy, freq] = entropy_grouped(double(homerBin_img), 2, 2);
entropy

[entropy, freq] = ent(double(guitarSolo_audio'));
entropy
[entropy, freq] = entropy_grouped(double(guitarSolo_audio), 2, 2);
entropy

[entropy, freq] = ent(double(english_txt));
entropy
[entropy, freq] = entropy_grouped(double(english_txt), 2, 2);
entropy

%disp(sprintf('kid_img --> %f', entropy));
%figure(1)
%bar(freq)

%subplot(2,3,2)
%[entropy, freq] = entropy_grouped(double(homer_img), 2, 2);
%disp(sprintf('homer_img --> %f', entropy));
%%figure(2)
%bar(freq)

%subplot(2,3,3)
%[entropy, freq] = entropy_grouped(double(homerBin_img), 2, 2);
%disp(sprintf('homerbin_img --> %f', entropy));
%%figure(3)
%bar(freq)

%subplot(2,3,4)
%[entropy, freq] = entropy_grouped(guitarSolo_audio', 2, 2);
%disp(sprintf('guitarsolo_audio --> %f', entropy));
%%figure(4)
%bar(freq)

%subplot(2,3,5)
%[entropy, freq] = entropy_grouped(double(english_txt), 2, 2);
%disp(sprintf('english_txt --> %f', entropy));
%%figure(5)
%bar(freq)

