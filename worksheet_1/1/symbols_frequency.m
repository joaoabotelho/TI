function symbols_frequency(symbols)
  unique_symbols = unique(symbols);
  frequency = cellfun(@(x) sum(ismember(symbols, x)), unique_symbols);

  histogram('Categories', unique_symbols, 'BinCounts', frequency);
end
