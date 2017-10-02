function changed_image = gray_levels(image)

  image_size = size(image);
  changed_image = zeros(image_size(1), image_size(2));

  for i = 1:image_size(1)
    for j = 1:image_size(2)
      changed_image(i, j) = 0.2978 * image(i,j,1) + 0.5870 * image(i,j,2) + 0.1140 * image(i,j,3);
    end
  end

end
