function entropy = calc_entropy(symbols, symbols_type)

  sum_value = 0;
  [symbols_h, symbols_w] = size(symbols);
  unique_symbols = unique(symbols);

  if strcmp(symbols_type, 'int') == 1
    for i = 1:length(unique_symbols)
      frequency = [];
      frequency = [frequency; sum(symbols(:) == unique_symbols(i))];
    end

  elseif strcmp(symbols_type, 'cell') == 1
    frequency = {};
    frequency = cellfun(@(x) sum(ismember(symbols, x)), unique_symbols);
  end


  for i = 1:length(frequency)
    probability = frequency(i)/(symbols_h * symbols_w);
    sum_value = sum_value + probability * log2(probability);
  end

  entropy = -sum_value;
end
