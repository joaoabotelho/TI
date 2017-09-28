function entropy = calc_entropy(symbols)
  unique_symbols = unique(symbols);
  frequency = cellfun(@(x) sum(ismember(symbols, x)), unique_symbols);
  sum_value = 0;
  symbols_length = length(symbols);

  for i = 1:length(frequency)
    probability = frequency(i)/symbols_length;
    sum_value = sum_value + probability * log2(probability);
  end

  entropy = -sum_value;
end
