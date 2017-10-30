function [bmean, v] = bmean_var(source)

  new_source = [];

  new_source = reshape(source', 1, [])';

  tbl = tabulate(new_source);

  probabilities = tbl(:,3) / 100;
  freq = tbl(:,2);

  hl = hufflen(freq);
  bmean = sum(probabilities .* hl);
  v = var(hl, probabilities);

end
