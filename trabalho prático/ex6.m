%Initialization
clear, close all, clc;

%add paths
addpath ./3/data
addpath ./5
addpath ./6

%load info
[guitarSolo_audio, fs] = audioread('guitarSolo.wav');

target1 = audioread('target01 - repeat.wav');

target2 = audioread('target02 - repeatNoise.wav');

song1 = audioread('Song01.wav');
song2 = audioread('Song02.wav');
song3 = audioread('Song03.wav');
song4 = audioread('Song04.wav');
song5 = audioread('Song05.wav');
song6 = audioread('Song06.wav');
song7 = audioread('Song07.wav');

disp(sprintf('Exercise 6:'));

target = [6 8 9 7 2 4 9 9 4 9 1 4 8 0 1 2 2 6 3 2 0 7 4 9 5 4 8 5 2 7 8 0 7 4 8 5 7 4 3 2 2 7 3 5 2 7 4 9 9 6];
query = [2 6 4 10 5 9 5 8 0 8];

mutual_inf(double(query), double(target), 1)

mut_a = mutual_inf((guitarSolo_audio)', (target1)', size(guitarSolo_audio, 1) / 4)
subplot(2,1,1)
plot(mut_a)
title('target01');
mut_b = mutual_inf((guitarSolo_audio)', (target2)', size(guitarSolo_audio, 1) / 4)
subplot(2,1,2)
plot(mut_b)
title('target02');

song_1_inf = mutual_inf((guitarSolo_audio)', (song1)', size(guitarSolo_audio, 1) / 4)
song_2_inf = mutual_inf((guitarSolo_audio)', (song2)', size(guitarSolo_audio, 1) / 4)
song_3_inf = mutual_inf((guitarSolo_audio)', (song3)', size(guitarSolo_audio, 1) / 4)
song_4_inf = mutual_inf((guitarSolo_audio)', (song4)', size(guitarSolo_audio, 1) / 4)
song_5_inf = mutual_inf((guitarSolo_audio)', (song5)', size(guitarSolo_audio, 1) / 4)
song_6_inf = mutual_inf((guitarSolo_audio)', (song6)', size(guitarSolo_audio, 1) / 4)
song_7_inf = mutual_inf((guitarSolo_audio)', (song7)', size(guitarSolo_audio, 1) / 4)

max_mut_inf = [
max(song_1_inf)
max(song_2_inf)
max(song_3_inf)
max(song_4_inf)
max(song_5_inf)
max(song_6_inf)
max(song_7_inf)
]

sorted_max_inf = sort(max_mut_inf, 'descend')
