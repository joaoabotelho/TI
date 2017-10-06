function entropy = calc_entropy(source, alphabet)

  frequency = arrayfun(@(x) sum(histc(source, x)), alphabet);
  num_symbols = sum(frequency);
  probability = nonzeros(frequency ./ num_symbols);
  entropy = -sum(probability .* log2(probability));

end
