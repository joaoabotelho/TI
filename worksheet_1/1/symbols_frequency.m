function symbols_frequency(source, alphabet)

  bar(histc(source, alphabet));
  xtickangle(90), xlabel('alphabet'), ylabel('frequency');

end
