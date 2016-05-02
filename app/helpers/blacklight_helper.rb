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

def catalog_info(bibid)
  response = JSON.parse(HTTPClient.get_content("#{ENV['CATALOG']}/select?qt=document&id=#{bibid}&wt=json&fl=id,fulltitle_display,summary_display,notes")).with_indifferent_access
  @response = response['response']['docs']
end

  PREFIXES = {
    'huntington' => 'hunt',
    'bolivian' => 'bol',
    'bees' => 'bees'
  }

def publication options={}
options[:document] # the original document
options[:field] # the field to render
options[:value] # the value of the field
if !options[:value].blank?
  return "#{options[:value][0]}, #{options[:document]["pubplace_tesim"][0]}, #{options[:document]["pubdate_tesim"][0]} "
end
end

def autolink_field options={}
options[:document] # the original document
options[:field] # the field to render
options[:value] # the value of the field
collection = options[:document]["collection_tesim"][0]
if collection != "Persuasive Maps: PJ Mode Collection"
  options[:value]
else
  options[:value].map do |value|
  auto_link(value)
end
end
end

   



  def pubstmt_to_id(pubstmt)
    PREFIXES.each do |key,value|
      if pubstmt.start_with?(value)
        prefix = value
        number = pubstmt.gsub(prefix,':')
        return prefix + number
      end
    end
  end


 def document_has_value? document, field_config
    document.has?(field_config.field) ||
      (document.has_highlight_field? field_config.field if field_config.highlight) 
  end





end
