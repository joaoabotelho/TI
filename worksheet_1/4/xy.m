function [entropy, bmean, freq, v] = len_mean_entropy(source, n)

  freq = [];
  new_source = [];
  k = 1;

  for i = 1:size(source,1)
    for j = 1:n:size(source, 2)
      new_source(k,1) = source(i, j) * 256 + source(i, j + 1);
      k = k + 1;
    end
  end

  unique_s = unique(new_source);

  size(unique_s)
  for i = 1:size(unique_s,1)
    freq(i,1) = sum(new_source == unique_s(i));
  end

  %unique_symbols = unique(new_source, 'rows');
  hl = hufflen(freq);
  probabilities = freq ./ sum(freq);
  bmean = sum(probabilities .* hl)/n;
  v = var(hl, probabilities);
  entropy = -sum(probabilities .* log2(probabilities))/n;

end
