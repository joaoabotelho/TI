function [ entropy ] = calc_entropy( probs )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

informacao=-log2(nonzeros(probs));
entropy=sum(nonzeros(probs).*informacao);
end

