function bmean = huff_len_mean(source, alphabet, n)

  freq = histcounts(source, alphabet);

  huff_len = hufflen(freq);

  prob = freq ./ sum(freq);

  bmean = sum(prob .* huff_len)/n;
end
