function graphicVisualization(signal, fs, tStart, tEnd)

  ts = 1/(fs);
  [nSamples, nc] = size(signal);
  duration = nSamples * ts;

  if nargin == 2;
    tStart = 0;
    tEnd = duration;
  end

  if nargin == 3;
    tEnd = duration;
  end

  x = 0:ts:duration-ts;
  %x(length(x)-1) = [];

  %normalizing
  %y1 = double(signal - mean(signal(:,1))) ./ std(double(signal(:,1)));
  %y2 = double(signal - mean(signal(:,2))) ./ std(double(signal(:,2)));

  if nc == 1
    plot(x, signal(:,1), 'b');
    xlabel('Time(s)'), ylabel('Amplitude')
    xlim([tStart tEnd])

  else
    a = subplot(2,1,1);
    plot(x, signal(:,1), 'b')
    xlabel('Time(s)'), ylabel('Amplitude')
    title('Left Channel')
    xlim([tStart tEnd])

    b = subplot(2,1,2);
    plot(x, signal(:,2), 'r')
    xlabel('Time(s)'), ylabel('Amplitude')
    title('Right Channel')
    xlim([tStart tEnd])
  end

end
