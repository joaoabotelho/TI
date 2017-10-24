function [ samples, alfabeto ] = reader( fonte, type )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    switch type
        case 'audio'
            info=audioinfo(fonte);
            bits_quant=info.BitsPerSample;
            alfabeto_dim=2^bits_quant;
            delta=2/alfabeto_dim;
            alfabeto=-1:delta:1-delta;
            samples=audioread(fonte);
        case 'img'
            [samples,map_cor]=imread(fonte);
            %colormap(map_cor);
            %image(samples);
            info=imfinfo(fonte);
            bits_quant=info.BitDepth;
            dim_alfabeto=2^bits_quant;
            alfabeto=0:dim_alfabeto-1;
        case 'text'
            fileID=fopen(fonte,'r');
            samples=fscanf(fileID,'%s');
            samples=double(samples);
            alfabeto=['A':'Z','a':'z'];
            alfabeto=double(alfabeto);
    end
end

