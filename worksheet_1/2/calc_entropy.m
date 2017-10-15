function entropy = calc_entropy(source, alphabet)

  frequency = histcounts(source, alphabet);
  num_symbols = sum(frequency);
  probability = nonzeros(frequency ./ num_symbols);
  entropy = -sum(probability .* log2(probability));

end
