function entropy = entropy_grouped(source, n_column, n_symbols)

  new_source = [];
  max_value = max(max(source)) + 1;

  new_source = reshape(source', n_column, [])';

  if n_column == 1
    tbl = tabulate(new_source);
  elseif n_column == 2
    mul_matrix = [max_value + 1; 1];
    tbl = tabulate(new_source * mul_matrix);
  end

  probs = nonzeros(tbl(:,3) / 100);

  entropy = -sum(probs .* log2(probs))/n_symbols;
end
