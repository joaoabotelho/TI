%Initialization
clear, close all, clc;

%add paths
addpath ./1
addpath ./2
addpath ./3/data
addpath ./4
addpath ./5
addpath ./6

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

song1 = audioread('Song01.wav');
song2 = audioread('Song02.wav');
song3 = audioread('Song03.wav');
song4 = audioread('Song04.wav');
song5 = audioread('Song05.wav');
song6 = audioread('Song06.wav');
song7 = audioread('Song07.wav');

%alphabets
image_alphabet = (0:255);

audio_info = audioinfo('guitarSolo.wav');
d = 2/2^audio_info.BitsPerSample;
audio_alphabet = (-1:d:1-d);

text_alphabet = ['A':'Z', 'a':'z'];

%%graphs
%subplot(2,3,1)
%symbols_frequency(kid_img, image_alphabet);
%title('kid.bmp');

%subplot(2,3,2)
%symbols_frequency(homer_img, image_alphabet);
%title('homer.bmp');

%subplot(2,3,3)
%symbols_frequency(homerBin_img, image_alphabet);
%title('homerBin.bmp');

%subplot(2,3,4)
%symbols_frequency(guitarSolo_audio, audio_alphabet);
%title('guitarSolo.wav');

%subplot(2,3,5)
%symbols_frequency(double(english_txt), double(text_alphabet));
%set(gca, 'XTickLabel', cellstr(num2str(text_alphabet'))', 'XTick', 1:numel(text_alphabet));
%title('english.txt');

%%entropies
%disp(sprintf('Entropies:'));

%disp(sprintf('kid.bmp --> %f', calc_entropy(kid_img)));

%disp(sprintf('homer.bmp --> %f', calc_entropy(homer_img)));

%disp(sprintf('homerbin.bmp --> %f', calc_entropy(homerBin_img)));

%disp(sprintf('guitarSolo.wav --> %f', calc_entropy(guitarSolo_audio)));

%disp(sprintf('english.txt --> %f', calc_entropy(double(english_txt))));

%disp(sprintf('Hufflen singles  entropy // bmean:'));

%[bmean, v] = bmean_var(kid_img);
%disp(sprintf('kid_img --> %f --> %f', bmean, v));

%[bmean, v] = bmean_var(homer_img);
%disp(sprintf('homer_img --> %f --> %f', bmean, v));

%[bmean, v] = bmean_var(homerBin_img);
%disp(sprintf('homerBin_img --> %f --> %f', bmean, v));

%[bmean, v] = bmean_var(guitarSolo_audio);
%disp(sprintf('guitarSolo_audio --> %f --> %f', bmean, v));

%[bmean, v] = bmean_var(double(english_txt));
%disp(sprintf('english_txt --> %f --> %f', bmean, v));

%tic
%disp(sprintf('\nhufflen pairs  entropy // bmean:'));

%[entropy] = entropy_grouped(double(kid_img), 2, 2);
%disp(sprintf('kid_img --> %f', entropy));
%%figure(1)
%%bar(freq)

%[entropy] = entropy_grouped(double(homer_img), 2, 2);
%disp(sprintf('homer_img --> %f', entropy));
%%figure(2)
%%bar(freq)

%[entropy] = entropy_grouped(double(homerBin_img), 2, 2);
%disp(sprintf('homerbin_img --> %f', entropy));
%%figure(3)
%%bar(freq)

%[entropy] = entropy_grouped(guitarSolo_audio', 2, 2);
%disp(sprintf('guitarsolo_audio --> %f', entropy));
%%figure(4)
%%bar(freq)

%[entropy] = entropy_grouped(double(english_txt), 2, 2);
%disp(sprintf('english_txt --> %f', entropy));
%%%figure(5)
%%%bar(freq)
%toc

%disp(sprintf('\nxy // bmean:'));

%[entropy, bmean, freq, v] = xy(kid_img, 2);
%disp(sprintf('kid_img --> %f --> %f --> %f', entropy, bmean, v));

%[entropy, bmean, freq, v] = xy(homer_img, 2);
%disp(sprintf('homer_img --> %f --> %f --> %f', entropy, bmean, v));

%[entropy, bmean, freq, v] = xy(homerBin_img, 2);
%disp(sprintf('homerBin_img --> %f --> %f --> %f', entropy, bmean, v));

%[entropy, bmean, freq, v] = xy(guitarSolo_audio', 2);
%disp(sprintf('guitarSolo_audio --> %f --> %f --> %f', entropy, bmean, v));

%[entropy, bmean, freq, v] = xy(double(english_txt), 2);
%disp(sprintf('english_txt --> %f --> %f -> %f', entropy, bmean, v));

%target = [6 8 9 7 2 4 9 9 4 9 1 4 8 0 1 2 2 6 3 2 0 7 4 9 5 4 8 5 2 7 8 0 7 4 8 5 7 4 3 2 2 7 3 5 2 7 4 9 9 6];
%query = [2 6 4 10 5 9 5 8 0 8];
%mutual_inf_v2(double(query), double(target), 1)

%mutual_inf((guitarSolo_audio)', (target1)', size(guitarSolo_audio, 1) / 4);
%mutual_inf((guitarSolo_audio)', (target2)', size(guitarSolo_audio, 1) / 4);

%song_1_inf = mutual_inf((guitarSolo_audio)', (song1)', size(guitarSolo_audio, 1) / 4)
%song_2_inf = mutual_inf((guitarSolo_audio)', (song2)', size(guitarSolo_audio, 1) / 4)
%song_3_inf = mutual_inf((guitarSolo_audio)', (song3)', size(guitarSolo_audio, 1) / 4)
%song_4_inf = mutual_inf((guitarSolo_audio)', (song4)', size(guitarSolo_audio, 1) / 4)
%song_5_inf = mutual_inf((guitarSolo_audio)', (song5)', size(guitarSolo_audio, 1) / 4)
%song_6_inf = mutual_inf((guitarSolo_audio)', (song6)', size(guitarSolo_audio, 1) / 4)
%song_7_inf = mutual_inf((guitarSolo_audio)', (song7)', size(guitarSolo_audio, 1) / 4)

%max_song_1 = max(song_1_inf)
%max_song_2 = max(song_2_inf)
%max_song_3 = max(song_3_inf)
%max_song_4 = max(song_4_inf)
%max_song_5 = max(song_5_inf)
%max_song_6 = max(song_6_inf)
%max_song_7 = max(song_7_inf)

%sorted_song_1 = sort(song_1_inf, 'descend')
%sorted_song_2 = sort(song_2_inf, 'descend')
%sorted_song_3 = sort(song_3_inf, 'descend')
%sorted_song_4 = sort(song_4_inf, 'descend')
%sorted_song_5 = sort(song_5_inf, 'descend')
%sorted_song_6 = sort(song_6_inf, 'descend')
%[>s<]orted_song_7 = sort(song_7_inf, 'descend')
