function symbols_frequency(source, alphabet)

  ns = reshape(source, 1, []);
  a = histc(ns, alphabet);
  bar(a);

end
