function [energy_left, energy_right] = energy(signal)
  energy_left = sum(signal(:,1).^2);
  energy_right = sum(signal(:,2).^2);
end
