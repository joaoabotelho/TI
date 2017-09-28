%Initialization
clear, close all, clc;

%add paths
addpath ./1
addpath ./2

source = {'1', 'a', 'a', '2', '2', '4', 'f', 'd', 'f'};

%symbols_frequency(source);

calc_entropy(source);
