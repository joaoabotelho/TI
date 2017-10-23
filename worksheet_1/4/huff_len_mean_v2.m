function bmean = huff_len_mean(source, n)

  freq = [];
  unique_symbols = ones(1, n) * -2;
  k = 1;

  for i = 1:size(source,1)
    for j = 1:n:size(source,2)
      symbols = get_symbols(source, n, [i,j]);
      [contains, index] = ismember(symbols, unique_symbols, 'rows');

      if contains
        freq(index, 1) = freq(index, 1) + 1;
      else
        freq(k, 1) = 1;
        unique_symbols(k, :) = symbols;
        k = k + 1;
      end

    end
  end

  hl = hufflen(freq);
  probabilities = freq ./ sum(freq);
  bmean = sum(probabilities .* log2(probabilities))/n;

end

function symbols = get_symbols(source, n, index)

  symbols = [];
  k = 1;

  for i = 0:n-1
    symbols(1,k) = source(index(1), index(2) + i);
    k = k + 1;
  end

end
