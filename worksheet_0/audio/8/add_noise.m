function changed_signal = add_noise(signal, amplitude)

  changed_signal = double(signal) + double(rand(size(signal)) * amplitude);

end
