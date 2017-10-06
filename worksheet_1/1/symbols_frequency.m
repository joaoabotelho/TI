function symbols_frequency(source, alphabet)

  frequency = arrayfun(@(x) sum(histc(source, x)), alphabet);
  bar(frequency);
  set(gca, 'XTickLabel', cellstr(num2str(alphabet'))', 'XTick', 1:numel(alphabet));
  xtickangle(90);
  xlabel('alphabet');
  ylabel('frequency');

end
