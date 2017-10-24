function [prob,ocorr]= histogram( data, alfabeto, file_name )
%Funcao que cria um histograma a partir de uma fonte de dados
%   Argumentos: dados, fonte de dados, alfabeto
%       Saida: vector de probabilidades
    
    ocorr=histc(data,alfabeto);
    if ~strcmp(file_name,'english.txt')
        ocorr=histc(data,alfabeto);
        ocorr=sum(ocorr,2);
    
    else
       ocorr=histc(data,alfabeto);
       ocorr=ocorr';
    end
    bar(alfabeto,ocorr,'histc');
    title(file_name);
    prob=ocorr/sum(ocorr);
end

