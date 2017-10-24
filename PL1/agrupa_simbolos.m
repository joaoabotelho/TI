function [ agrupamentos ] = agrupa_simbolos( alfabeto )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if mod(alfabeto,2)~=0
    alfabeto=alfabeto(1:end-1);
end
agrupamentos=zeros(length(alfabeto));

for i=1:length(alfabeto)
    for j=1:length(alfabeto)
        agrupamentos(i,j)=alfabeto(i)*length(alfabeto)+alfabeto(j);
    end
end


