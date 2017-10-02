function symbols_frequency(symbols, alphabet)

  [symbols_h, symbols_w] = size(symbols);
  frequency = [];

  for k = 1:length(alphabet)
    frequency(1, k) = 0;
    for i = 1:symbols_h
      for j = 1:symbols_w
        if strcmp(symbols{i, j}, alphabet{1, k})
          frequency(1, k) = frequency(1, k) + 1;
        end
      end
    end
  end

  histogram('Categories', alphabet, 'BinCounts', frequency);
end
