function mut_inf = mutual_inf(query, target)

  mut_inf = [];

  query_freq = histc(query, (0:10));
  query_probs = query_freq / sum(query_freq);

  for i = 1:size(target,2) - size(query,2) + 1

    target_freq = histc(target(i:(i + size(query, 2) - 1)), (0:10));
    target_probs = target_freq / sum(target_freq);

    aux = [query', target(i:(i + size(query, 2) - 1))'];

    [ii, jj, kk] = unique(aux, 'rows');

    f=histc(kk,1:numel(jj));
    f = nonzeros(f);
    probs = f / sum(f);

    mul_probs = [];

    for j = 1:size(ii,1)
      mul_probs(j, 1) = query_probs(ii(j,1) + 1) * target_probs(ii(j, 2) + 1);
    end

    mut_inf(i) = sum(probs .* log2(probs./mul_probs));
  end
end


%audio - 5.78
