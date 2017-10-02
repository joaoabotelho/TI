function visualizacaoGrafica(sinal, fs)
  Ts = 1/fs;
  [m,n] = size(sinal);
  duracao = m * Ts;
  A = [0:Ts:duracao-Ts];
  subplot(211)
  plot(A, sinal(:,1))
  title('Canal esquerdo');
  xlabel('Tempo(seg)');
  ylabel('Amplitude[-1;1]');
  subplot(212)
  plot(A, sinal(:,2))
  title('Canal direito');
end
