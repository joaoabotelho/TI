function symbols_frequency(source, alphabet)

  frequency = histcounts(source, alphabet);
  bar(frequency);
  xtickangle(90), xlabel('alphabet'), ylabel('frequency');

end
