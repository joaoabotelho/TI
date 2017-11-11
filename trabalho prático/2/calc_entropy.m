function entropy = calc_entropy(source)

  new_source = reshape(source, 1, []);
  tbl = tabulate(new_source);
  probability = nonzeros(tbl(:,3)/100);
  entropy = -sum(probability .* log2(probability));

end
