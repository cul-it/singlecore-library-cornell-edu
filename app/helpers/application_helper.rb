module ApplicationHelper

  # app/helpers/application_helper.rb

  def render_thumbnail(document, options)
    ss_thumb = render_index_field_value :document => document, :field => "media_URL_size_2_tesim"
    aws_thumb = render_index_field_value :document => document, :field => "awsthumbnail_tesim"
    if ss_thumb.present?
      return image_tag(ss_thumb, options)
    end
    if aws_thumb.present?
      return image_tag(aws_thumb, options)
    end
  end

  def has_search_parameters?
    !params[:q].blank? or !params[:f].blank? or !params[:search_field].blank?
  end

  def link_to_in_li(body, url, html_options = {})
    active = "active" if current_page?(url)
    content_tag :li, class: active do
      link_to body, url, html_options
    end
  end

end
