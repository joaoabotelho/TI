function new_signal = change_signal(signal, filename, tStart)

  [replace_signal, fs] = audioread('beats.wav');

  replace_signal = [zeros(fs * tStart, 1); replace_signal];

  if length(replace_signal) > length(signal(:,2))
    signal = [signal; zeros(length(replace_signal) - length(signal(:,2)),1)]

  else
    replace_signal = [replace_signal; zeros(length(signal(:, 2)) - length(replace_signal),1)];
  end

  new_signal = [replace_signal, signal(:,2)];
  new_signal = [replace_signal + signal(:,2)];
  graphicVisualization(new_signal, fs);

end
