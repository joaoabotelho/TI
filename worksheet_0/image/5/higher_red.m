function changed_image = higher_red(image, factor);

  changed_image = image;
  changed_image(:,:,1) = changed_image(:,:,1) * factor;

end
