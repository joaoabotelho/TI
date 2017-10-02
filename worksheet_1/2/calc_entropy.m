function entropy = calc_entropy(symbols, alphabet)

  sum_value = 0;
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

  for i = 1:length(frequency)
    if frequency(1, i) ~= 0
      probability = frequency(1, i)/(symbols_h * symbols_w);
      sum_value = sum_value + probability * log2(probability);
    end
  end

  entropy = -sum_value;
end
