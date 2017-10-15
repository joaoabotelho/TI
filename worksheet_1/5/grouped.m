function huff_entropy = grouped(source)
  %source(regexp(source,'[ .,]'));
  new_source = [];
  frequency = [];
  k = 1;

  for i = 1:2:size(source, 2)
    new_source = [new_source; source(:, i:i+1)];
    k = k + 1;
  end

  alph = unique(new_source, 'rows');

  k = 1;
  for j = 1:size(alph, 1)
    frequency(k,1) = sum((new_source(:,1) == alph(j,1)) == (new_source(:,2) == alph(j,2)));
    k = k + 1;
  end

  prob = frequency ./ sum(frequency);

  huff_len = hufflen(frequency);

  prob = frequency ./ sum(frequency);

  huff_entropy = sum(prob .* huff_len)/2;

end
