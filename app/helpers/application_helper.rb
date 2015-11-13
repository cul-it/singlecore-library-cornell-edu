module ApplicationHelper

  # app/helpers/application_helper.rb

  def render_thumbnail(document, options)
    fedora_type = render_index_field_value :document => document, :field => "active_fedora_model_ssi"
    ss_thumb = render_index_field_value :document => document, :field => "media_URL_size_2_tesim"
    dlxs_thumb = "http://hydrastg.library.cornell.edu/fedora/objects/#{document[:id]}/datastreams/thumbnailImage/content"
    if ss_thumb.present?
    return  image_tag(ss_thumb, options={})
    end
    if fedora_type.present?
      image_tag(dlxs_thumb, options={})
    end
  end


end
