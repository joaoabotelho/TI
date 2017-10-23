% Initialization
clear, close all, clc;

[sinal, fs] = audioread('TP0/saxriff.wav');
visualizacaoGrafica(sinal,fs,0.5);

pause;
