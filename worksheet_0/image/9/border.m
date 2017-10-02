function changed_image = border(image)

  image_size = size(image);
  changed_image = image;

  for i = 1:image_size(1)
    prev = image(i, 1);
    for j = 1:image_size(2)

      if image(i,j) ~= prev
        changed_image(i, j) = 255;

      else
        changed_image(i, j) = 0;
      end

      prev = image(i,j);

    end
  end
end
