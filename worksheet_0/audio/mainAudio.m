%Initialization
clear, close all, clc

%add paths
addpath ./4
addpath ./5
addpath ./8
addpath ./9
addpath ./10
addpath ./11

%read audio file
[signal, fs] = audioread('saxriff.wav');
%[signal1, fs1] = audioread('beats.wav', 'native');
%sound(double(signal), fs);

%showInfo('saxriff.wav', fs);

%graphicVisualization(signal, fs)
%graphicVisualization(signal1, fs1);
%hold on;
%graphicVisualization(signal, fs);

%noisy_signal = add_noise(signal, 10000);

%sound(noisy_signal, fs);

%graphicVisualization(noisy_signal, fs);

%[a, b] = energy(signal);

%change_signal(signal, 'beats.m', 1.5);

ca(signal, 10);
