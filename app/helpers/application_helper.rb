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

  def new_render_document_show_field_value(args, options=nil)
    document = args[:document]
    doc_presenter = show_presenter(document)
    fields = doc_presenter.configuration.show_fields
    field = args[:field]
    fields = document_show_fields(document)
    ''
  end

  def link_to_agent_facet(options={})
    facet_links('agent_tesim', options)
  end

  def link_to_date_facet(options={})
    facet_links('date_facet_tesim', options)
  end

  def link_to_transcription_facet(options={})
    facet_links('transcription_tesim', options)
  end

  def facet_links(solr_field, options)
    facet = "#{request.protocol}#{request.host_with_port}/?f[#{solr_field}][]="
    safe_join(
      options[:value].map do |value|
        link_to("#{value}", "#{facet}#{URI.escape(value)}") << "<br />".html_safe
      end
    )
  end

end
