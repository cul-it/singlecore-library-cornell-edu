module BlacklightHelper
  include Blacklight::BlacklightHelperBehavior

  def id_to_subject(subject)
  params[:subject] = subject.downcase
end

def image_download options={}
    options[:document] # the original document
    options[:field] # the field to render
    options[:value] # the value of the field
    link_to content_tag(:span, 'Original Image'), options[:value][0]

  end

def collection_link options={}
    options[:document] # the original document
    options[:field] # the field to render
    options[:value] # the value of the field
    site_link = render_index_field_value options[:document], field: :collection_website_ss
    if !site_link.nil?
      link_to content_tag(:span, options[:value][0]), site_link
    else
      options[:value]
    end
end

  PREFIXES = {
    'huntington' => 'hunt',
    'bolivian' => 'bol'
  }


  def pubstmt_to_id(pubstmt)
    PREFIXES.each do |key,value|
      if pubstmt.start_with?(value)
        prefix = value
        number = pubstmt.gsub(prefix,':')
        return prefix + number
      end
    end
  end



end