function visualizacaoGrafica(sinal, fs, tIni, tFim)
  Ts = 1/fs;
  [m,n] = size(sinal);
  duracao = m * Ts;

  if nargin == 2;
    tIni = 0;
    tFim = duracao-Ts;
  elseif nargin == 3;
    tFim = duracao+Ts;
  end

  A = [tIni:Ts:tFim]; 
  subplot(211)
  plot(A, sinal(:,1))
  title('Canal esquerdo');
  xlabel('Tempo(seg)');
  ylabel('Amplitude[-1;1]');
  subplot(212)
  plot(A, sinal(:,2))
  title('Canal direito');
end
