%Initialization
clear, close all, clc;

%add paths
addpath ./1
addpath ./2
addpath ./3/data

source = {'1', 'a', 'a', '2', '2', '4', 'f', 'd', 'f'};

%symbols_frequency(source);

%calc_entropy(source);

cell_0_to_255 = {};
for i = 1:256
  cell_0_to_255{1, i} = int2str(i - 1);
end

subplot(2,3,1)
kid_img = num2cell(imread('kid.bmp'));
kid_img_str = cellfun(@(x) int2str(x), kid_img, 'un', 0);
symbols_frequency(kid_img_str, cell_0_to_255);
disp(sprintf('kid.bmp --> %f', calc_entropy(kid_img_str, cell_0_to_255)));

subplot(2,3,2)
homer_img = num2cell(imread('homer.bmp'));
homer_img_str = cellfun(@(x) int2str(x), homer_img, 'un', 0);
symbols_frequency(homer_img_str, cell_0_to_255);
disp(sprintf('homer.bmp --> %f', calc_entropy(homer_img_str, cell_0_to_255)));

subplot(2,3,3)
homerBin_img= num2cell(imread('homerBin.bmp'));
homerBin_img_str = cellfun(@(x) int2str(x), homerBin_img, 'un', 0);
symbols_frequency(homerBin_img_str, cell_0_to_255);
disp(sprintf('homerbin.bmp --> %f', calc_entropy(homerBin_img_str, cell_0_to_255)));

subplot(2,3,4)
[guitarSolo_audio, fs] = audioread('guitarSolo.wav');
guitarSolo_audio = num2cell(guitarSolo_audio);
cell_audio_alphabet = {};
j = 1;
d = 2/256;
for i = -1:d:1-d
  cell_audio_alphabet{1, j} = num2str(i);
  j = j + 1;
end
guitarSolo_audio_str = cellfun(@(x) num2str(x), guitarSolo_audio, 'un', 0);
symbols_frequency(guitarSolo_audio_str, cell_audio_alphabet);
disp(sprintf('guitarSolo.wav --> %f', calc_entropy(guitarSolo_audio_str, cell_audio_alphabet)));

subplot(2,3,5)
text_alphabet = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
english_txt = fileread('english.txt');
english_text_split = {};
%show histogram
for i = 1:length(english_txt)
english_text_split{i, 1} = english_txt(i); 
end
symbols_frequency(english_text_split, text_alphabet);
disp(sprintf('english.txt --> %f', calc_entropy(english_text_split, text_alphabet)));
