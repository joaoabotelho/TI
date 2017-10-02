function changed_image = bin(image, limit)

  changed_image = (image > limit) * 255;

end
