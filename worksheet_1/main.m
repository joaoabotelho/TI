%Initialization
clear, close all, clc;

%add paths
addpath ./1
addpath ./2
addpath ./3/data

%source = {'1', 'a', 'a', '2', '2', '4', 'f', 'd', 'f'};

%symbols_frequency(source);

%calc_entropy(source);

image_alphabet = (0:255);


subplot(2,3,1)
kid_img = imread('kid.bmp');
symbols_frequency(kid_img, image_alphabet);
disp(sprintf('kid.bmp --> %f', calc_entropy(kid_img, image_alphabet)));

subplot(2,3,2)
homer_img = imread('homer.bmp');
symbols_frequency(homer_img, image_alphabet);
disp(sprintf('homer.bmp --> %f', calc_entropy(homer_img, image_alphabet)));

subplot(2,3,3)
homerBin_img= imread('homerBin.bmp');
symbols_frequency(homerBin_img, image_alphabet);
disp(sprintf('homerbin.bmp --> %f', calc_entropy(homerBin_img, image_alphabet)));

subplot(2,3,4)
[guitarSolo_audio, fs] = audioread('guitarSolo.wav');
audio_info = audioinfo('guitarSolo.wav');
d = 2/2^audio_info.BitsPerSample;
audio_alphabet = (-1:d:1-d);
symbols_frequency(guitarSolo_audio, audio_alphabet);
disp(sprintf('guitarSolo.wav --> %f', calc_entropy(guitarSolo_audio, audio_alphabet)));

subplot(2,3,5)
text_alphabet = ['a':'z', 'A':'Z'];
english_txt = fileread('english.txt');
symbols_frequency(english_txt, text_alphabet);
disp(sprintf('english.txt --> %f', calc_entropy(english_txt, text_alphabet)));
