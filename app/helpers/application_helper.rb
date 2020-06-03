module ApplicationHelper

  # app/helpers/application_helper.rb

  def render_thumbnail(document, options)
    ss_thumb = render_index_field_value :document => document, :field => "media_URL_size_2_tesim"
    aws_thumb = render_index_field_value :document => document, :field => "awsthumbnail_tesim"
    if ss_thumb.present?
      return image_tag(ss_thumb, options={})
    end
    if aws_thumb.present?
      return image_tag(aws_thumb, options={})
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



def asset_visible?(id)
  # eid = id.sub(':', '\:')
  eid = id
  fq = set_fq("production")
  fq = URI.escape(fq)
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{eid}&fq=#{fq}&wt=json&indent=true&rows=1")).with_indifferent_access
  @response = response['response']['docs']
#******************
save_level = Rails.logger.level; Rails.logger.level = Logger::WARN
Rails.logger.warn "jgr25_log\n#{__method__} #{__LINE__} #{__FILE__}:"
msg = ["****************** #{__method__}"]
msg << @fq.inspect
msg << response['response'].keys.inspect
msg << '******************'
puts msg.to_yaml
Rails.logger.level = save_level
#*******************
  true
end



end
