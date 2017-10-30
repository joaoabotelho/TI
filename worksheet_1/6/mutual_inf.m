function mut_inf = mutual_inf(query, target, step)

  mut_inf = [];

  h_query = entropy_grouped(query, 1, 1);
  limit = ceil((size(target,2) - size(query, 2) + 1) / step);

  for i = 0:limit-1

    if i == 0
      first_pos = 1;
      last_pos = size(query, 2);
    else
      first_pos = i * step;
      last_pos = i * step + size(query, 2) - 1;
    end

    window = target(first_pos:last_pos);

    h_target = entropy_grouped(window, 1, 1);

    h_grouped = entropy_grouped([query', window'], 2, 1);
    mut_inf(i + 1) = h_query + h_target - h_grouped;
  end
end
