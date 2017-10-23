function [entropy, bmean, freq, v] = len_mean_entropy(source, n)

  freq = [];
  new_source = [];

  for i = 1:n:size(source,2)
    new_source = vertcat(new_source, source(:,i:i+n-1));
  end

  unique_symbols = unique(new_source, 'rows');

  for i = 1:size(unique_symbols,1)
    found = sum((new_source == unique_symbols(i,:)));
    freq(i,1) = found(1);
  end

  hl = hufflen(freq);
  probabilities = freq ./ sum(freq);
  bmean = sum(probabilities .* hl)/n;
  v = var(hl, probabilities);
  entropy = -sum(probabilities .* log2(probabilities))/n;

end
