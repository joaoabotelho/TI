function symbols_frequency(symbols)
  unique_symbols = unique(symbols);
  frequency = [];
  cell_symbols_int = num2cell(unique_symbols);
  cell_symbols_str = cellfun(@(x) int2str(x), cell_symbols_int, 'un', 0);

  for i = 1: length(unique_symbols)
    frequency = [frequency; sum(symbols(:) == unique_symbols(i))];
  end

  histogram('Categories', cell_symbols_str, 'BinCounts', frequency);
end
