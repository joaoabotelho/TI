function mut_inf = mutual_inf(query, target)

  mut_inf = [];

  query_freq = histc(query, (0:10));

  query_probs = query_freq / sum(query_freq);


  for i = 1:size(target,2) - size(query,2) + 1

    target_freq = histc(target(i:(i + size(query,2) - 1)), (0:10));
    target_probs = target_freq / sum(target_freq);
    sum_value = 0;
    aux = zeros(11, 11);
    for j = 1:size(query, 2)
      aux(query(j) + 1, target(j + i - 1) + 1) = aux(query(j) + 1, target(j + i - 1) + 1) + 1;
    end

    for k = 1:11
      for l = 1:11
        if aux(k,l) > 0
          prob = aux(k,l) / size(query,2);
          sum_value = sum_value + prob * log2(prob/(query_probs(k) * target_probs(l)));
        end
      end
    end
    mut_inf(i) = sum_value;
  end
end
