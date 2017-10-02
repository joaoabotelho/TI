function changed_image = mosaic(image, W)

  image_size = size(image);
  changed_image = image;

  for i = 1:image_size(1)
    for j = 1:ceil(W/2):image_size(2)

      if j - floor(W/2) < 0
        for k = j:floor(W/2)
          changed_image(i, k, :) = changed_image(i, j, :);   
        end

      elseif j + floor(W/2) > image_size(2)
        for k = j - floor(W/2):image_size(2)
          changed_image(i, k, :) = changed_image(i, j, :);
        end

      else 
        for k = j - floor(W/2):j + floor(W/2)
          changed_image(i, k, :) = changed_image(i, j, :);
        end
      end

    end
  end

end
