# frozen_string_literal: true

# application helper
module ApplicationHelper
  def html_content(string)
    return string if string.blank?

    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, no_images: true,
                                                                tables: true)
    markdown.render(string).html_safe
  end

  def billboard_image
    if @page.image.try(:present?)
      image_tag @page.image, class: 'img-fluid', style: "object-fit: cover; height: 400px"
    else
      image_tag 'billboard-placeholder.png', class: 'img-fluid', style: "object-fit: cover; height: 300px"
    end
  end

  def profile
    @page.sections.find_by(position: 1)
  end

  def profile_image
    if profile.try(:image).try(:present?)
      image_tag profile.image,
                class: 'rounded-circle mx-auto therapist-image d-block',
                size: '250x250'
    else
      image_tag 'agupta-image.jpg',
                class: 'rounded-circle therapist-image mx-auto d-block',
                size: '250x250'
    end
  end
end
