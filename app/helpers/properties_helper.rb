module PropertiesHelper
  def property_thumbnail property
    img = property.photo.present? ? property.photo.thumb.url : "placeholder.jpg"
    image_tag img, class: "property-thumb", size: "160"
  end

  def property_photo_url property
    property.photo.present? ? property.photo.url : "placeholder.jpg"
  end

end
