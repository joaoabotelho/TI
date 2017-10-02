function showInfo(filename, fs)
  fs = fs/1000;

  disp(sprintf('File Info\nFile Name: %s \nSampling Rate: %.3f kHz\nQuantification: undef', filename, fs));

  disp(sprintf('------------\nPress any key to continue'));

  pause;
end
