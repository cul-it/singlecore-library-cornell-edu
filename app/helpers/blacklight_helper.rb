module BlacklightHelper
  include Blacklight::BlacklightHelperBehavior
  include Blacklight::BlacklightMapsHelperBehavior

  def id_to_subject(subject)
  params[:subject] = subject.downcase
end

  # create a link to a bbox spatial search
  def link_to_bbox_search bbox_coordinates
    coords_for_search = bbox_coordinates.map { |v| v.to_s }
    link_to(t('blacklight.maps.interactions.bbox_search'),
            search_catalog_path(spatial_search_type: "bbox",
                               coordinates: "[#{coords_for_search[1]},#{coords_for_search[0]} TO #{coords_for_search[3]},#{coords_for_search[2]}]",
                               view: default_document_index_view_type))
  end

    # create a link to a spatial search for a set of point coordinates
  def link_to_point_search point_coordinates
    new_params = params.except(:controller, :action, :view, :id, :spatial_search_type, :coordinates)
    new_params[:spatial_search_type] = "point"
    new_params[:coordinates] = "#{point_coordinates[1]},#{point_coordinates[0]}"
    new_params[:view] = default_document_index_view_type
    link_to(t('blacklight.maps.interactions.point_search'), search_catalog_path(new_params))
  end

  # create a link to a location name facet value
  def link_to_placename_field field_value, field, displayvalue = nil
    if params[:f] && params[:f][field] && params[:f][field].include?(field_value)
      new_params = params
    else
      new_params = add_facet_params(field, field_value)
    end
    new_params[:view] = default_document_index_view_type
    link_to(displayvalue.presence || field_value,
            search_catalog_path(new_params.except(:id, :spatial_search_type, :coordinates)))
  end


  # create a link to a spatial search for a set of point coordinates
  def link_to_point_search point_coordinates
    new_params = params.except(:controller, :action, :view, :id, :spatial_search_type, :coordinates)
    new_params[:spatial_search_type] = "point"
    new_params[:coordinates] = "#{point_coordinates[1]},#{point_coordinates[0]}"
    new_params[:view] = default_document_index_view_type
    link_to(t('blacklight.maps.interactions.point_search'), search_catalog_path(new_params))
  end



def image_download options={}
    options[:document] # the original document
    options[:field] # the field to render
    options[:value] # the value of the field
    if options[:document]['disable_download_tesim'].present?
      return 'Not available'
    elsif options[:document]['project_id_ssi'] == "3450"
      link_to content_tag(:span, 'PDF Document'), options[:document]['media_URL_tesim'][0],title:"Download"
    else
      link_to content_tag(:span, 'Image'), options[:value][0],title:"Download",
      onclick:"javascript:_paq.push(['trackEvent', 'DownloadLink',
      'viewer-" + options[:document]['project_id_ssi'] + "-" + options[:document]['id'] +"'" + '])'

    end

  end


# Link Relationships field (map_relationships_tesim) to it's related item
def relationships options={}
  if options[:document]['map_relationships_tesim'].present?
    relationships = []
    options[:document]['map_relationships_tesim'].each do |relationship|
      r = link_to relationship, '/catalog/ss:' + relationship
      relationships << r
    end
  end
  return relationships.join("<br>").html_safe
end

# TODO: DRY up measurement helpers
# Combine measurement1 fields
def measurements options={}
  if options[:document]['map_measurement_tesim'].present? && options[:document]['map_measurement_unit_tesim'].present? && options[:document]['map_measurement_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ', '
      measurements << m_unit
    end
    options[:document]['map_measurement_dimension_tesim'].each do |measurement_dimension|
      m_dimension = measurement_dimension + ')'
      measurements << m_dimension
    end
  elsif options[:document]['map_measurement_tesim'].present? && options[:document]['map_measurement_unit_tesim'].present?
    options[:document]['map_measurement_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ', '
      measurements << m_unit
    end
  else
    options[:document]['map_measurement_tesim'].present?
    measurements = []
    options[:document]['map_measurement_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
  end
  return measurements.join.html_safe
end

# Combine measurement2 fields
def measurements2 options={}
  if options[:document]['map_measurement2_tesim'].present? && options[:document]['map_measurement2_unit_tesim'].present? && options[:document]['map_measurement2_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement2_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement2_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ', '
      measurements << m_unit
    end
    options[:document]['map_measurement2_dimension_tesim'].each do |measurement_dimension|
      m_dimension = measurement_dimension + ')'
      measurements << m_dimension
    end
  elsif options[:document]['map_measurement2_tesim'].present? && options[:document]['map_measurement2_unit_tesim'].present?
    options[:document]['map_measurement2_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement2_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement2_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ', '
      measurements << m_unit
    end
  else
    options[:document]['map_measurement2_tesim'].present?
    measurements = []
    options[:document]['map_measurement2_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
  end
  return measurements.join.html_safe
end

# Combine measurement3 fields
def measurements3 options={}
  if options[:document]['map_measurement3_tesim'].present? && options[:document]['map_measurement3_unit_tesim'].present? && options[:document]['map_measurement3_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement3_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement3_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ', '
      measurements << m_unit
    end
    options[:document]['map_measurement3_dimension_tesim'].each do |measurement_dimension|
      m_dimension = measurement_dimension + ')'
      measurements << m_dimension
    end
  elsif options[:document]['map_measurement3_tesim'].present? && options[:document]['map_measurement3_unit_tesim'].present?
    options[:document]['map_measurement3_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement3_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement3_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ', '
      measurements << m_unit
    end
  else
    options[:document]['map_measurement3_tesim'].present?
    measurements = []
    options[:document]['map_measurement3_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
  end
  return measurements.join.html_safe
end

# Combine measurement4 fields
def measurements4 options={}
  if options[:document]['map_measurement4_tesim'].present? && options[:document]['map_measurement4_unit_tesim'].present? && options[:document]['map_measurement4_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement4_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement4_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ', '
      measurements << m_unit
    end
    options[:document]['map_measurement4_dimension_tesim'].each do |measurement_dimension|
      m_dimension = measurement_dimension + ')'
      measurements << m_dimension
    end
  elsif options[:document]['map_measurement4_tesim'].present? && options[:document]['map_measurement4_unit_tesim'].present?
    options[:document]['map_measurement4_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement4_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement4_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ', '
      measurements << m_unit
    end
  else
    options[:document]['map_measurement4_tesim'].present?
    measurements = []
    options[:document]['map_measurement4_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
  end
  return measurements.join.html_safe
end

# Combine measurement5 fields
def measurements5 options={}
  if options[:document]['map_measurement5_tesim'].present? && options[:document]['map_measurement5_unit_tesim'].present? && options[:document]['map_measurement5_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement5_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement5_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ', '
      measurements << m_unit
    end
    options[:document]['map_measurement5_dimension_tesim'].each do |measurement_dimension|
      m_dimension = measurement_dimension + ')'
      measurements << m_dimension
    end
  elsif options[:document]['map_measurement5_tesim'].present? && options[:document]['map_measurement5_unit_tesim'].present?
    options[:document]['map_measurement5_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement5_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement5_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ', '
      measurements << m_unit
    end
  else
    options[:document]['map_measurement5_tesim'].present?
    measurements = []
    options[:document]['map_measurement5_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
  end
  return measurements.join.html_safe
end




def catalog_info(bibid)
  response = JSON.parse(HTTPClient.get_content("#{ENV['CATALOG']}/select?qt=document&id=#{bibid}&wt=json&fl=id,fulltitle_display,summary_display,notes")).with_indifferent_access
  @response = response['response']['docs']
end

def get_tracks args
    date = args['date_tesim'][0].gsub(" ","+")
    collection = args['collection_tesim'][0].gsub(" ","+")
    occasion = args['occasion_tesim'][0].gsub(" ","+")
    response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=collection_tesim:\"Indonesian+Music+Archive\"+AND+occasion_tesim:\"#{occasion}\"+AND+date_tesim:\"#{date}\"&wt=json&indent=true&sort=track_isi%20asc&rows=100")).with_indifferent_access
    @response = response['response']['docs']
    return @response
  end



def get_zorn_multiviews args
  collection = args['collection_tesim'][0]
  if args['plan_number_tesim'].present?
  parentid = args['plan_number_tesim'][0]
end
  sequence = args['portal_sequence_isi']
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=plan_number_tesim:\"#{parentid}\"&wt=json&indent=true&sort=portal_sequence_isi%20asc&rows=100"))
  @response = response['response']['docs']
  return @response
end

def get_blaschka_multiviews args
  collection = args['collection_tesim'][0]
  if args['identifier_blaschka_isi'].present?
  parentid = args['identifier_blaschka_isi']
end
  sequence = args['portal_sequence_isi']
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=identifier_blaschka_isi:\"#{parentid}\"&wt=json&indent=true&sort=portal_sequence_isi%20asc&rows=100"))
  @response = response['response']['docs']
  return @response
end

def get_hathi_multiviews args
  ark = args['arkID_tesim'][0]
  response = JSON.parse(HTTPClient.get_content("https://catalog.hathitrust.org/api/volumes/brief/htid/coo1.#{ark}.json"))
  @response = response['items']
  return @response.select { |item| item['orig'] == 'Cornell University'}
end

def get_chla_issues args
  journal = args['id']
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{journal}*+AND+has_model_ssim:\"Issue\"&wt=json&indent=true&sort=id%20asc&rows=1000"))
  @response = response['response']['docs']
  return @response
end

def get_chla_tocs args
  journal = args['id']
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{journal}"))
  @response = response['response']['docs']
  return @response
end

def chla_thumbnail args
  if !args['id'].include?('articles')
  thumb = args['id']
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{thumb}_1_fs&wt=json&indent=true"))
  @response = response['response']['docs']
  return @response[0]['awsthumbnail_tesim'][0].to_s
end
end

    PREFIXES = {
    'huntington' => 'hunt',
    'bolivian' => 'bol',
    'bees' => 'bees'
  }

def is_multi_image? args
  if (MULTI_IMAGE_COLLECTIONS.include?(args['project_id_ssi']) && get_zorn_multiviews(args).length > 1) || (MULTI_IMAGE_COLLECTIONS.include?(args['project_id_ssi']) && get_blaschka_multiviews(args).length > 1)
    return true
  end
end



  MULTI_IMAGE_COLLECTIONS = {
    '3686' => 'zorn',
    '3786' => 'blaschka',
    '2849' => 'costume'
  }

def publication options={}
options[:document] # the original document
options[:field] # the field to render
options[:value] # the value of the field
if !options[:value].blank?
  return "#{options[:value][0]}, #{options[:document]["pubplace_tesim"][0]}, #{options[:document]["pubdate_tesim"][0]} "
end
end

def autolink_field args
  collection = args[:document]["collection_tesim"][0]
  if collection == "Persuasive Maps: PJ Mode Collection" || "Digitizing Tell en-Naṣbeh, Biblical Mizpah of Benjamin"
   return auto_link(args[:document][args[:field]].join("<br>")).html_safe
   else
  return args[:document][args[:field]].join("<br>").html_safe
  end
end

def chla args
  if args[:document]["collection_tesim"].present?
  collection = args[:document]["collection_tesim"][0]
  if collection == "The core historical literature of agriculture" || collection ==  "Hive and Honeybee (needs editing)"
    return args[:document][args[:field]][0]
  else
    return args[:value].join
  end
end
end



def extent_units args
  if args[:document]["collection_tesim"].present?
  collection = args[:document]["collection_tesim"][0]
  if collection == "Persuasive Maps: PJ Mode Collection" && !args[:document]["extent_tesim"].nil?
   return ("(cm, H x W) " + args[:document]["extent_tesim"][0]).html_safe
   else
  return args[:document][args[:field]].join("<br>").html_safe
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

def has_collection_selected?
  collection_param = params[:f][:collection_tesim]
  if collection_param.present?
  @collection_selected = collection_param[0]
  render "collection_selected"
  end
end





end
