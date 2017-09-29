%Initialization
clear, close all, clc;

%add paths
addpath ./1
addpath ./2
addpath ./3/data

source = {'1', 'a', 'a', '2', '2', '4', 'f', 'd', 'f'};

%symbols_frequency(source);

%calc_entropy(source);

%subplot(2,2,1)
kid_img = imread('kid.bmp');
%symbols_frequency(kid_img);
disp(sprintf('kid.bmp --> %f', calc_entropy(kid_img, 'int')));

%subplot(2,2,2)
homer_img = imread('homer.bmp');
%symbols_frequency(homer_img);
disp(sprintf('homer.bmp --> %f', calc_entropy(homer_img, 'int')));

%subplot(2,2,3)
homerBin_img= imread('homerBin.bmp');
%symbols_frequency(homerBin_img);
disp(sprintf('homerbin.bmp --> %f', calc_entropy(homerBin_img, 'int')));

%subplot(2,2,4)
guitarSolo_audio = audioread('guitarSolo.wav');
%symbols_frequency(guitarSolo_audio, 'int');
disp(sprintf('guitarSolo.wav --> %f', calc_entropy(guitarSolo_audio, 'int')));

english_txt = fileread('english.txt');
english_text_split = {};
%show histogram
for i = 1:length(english_txt)
  english_text_split{i, 1} = english_txt(i); 
end
disp(sprintf('english.txt --> %f', calc_entropy(english_text_split, 'cell')));
