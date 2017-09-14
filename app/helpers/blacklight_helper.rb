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
    if options[:document]['collection_tesim'][0] !='Adler Hip Hop Archive'
    link_to content_tag(:span, 'Original Image'), options[:value][0],title:"Download",
    onclick:"javascript:_paq.push(['trackEvent', 'DownloadLink',
    'viewer-" + options[:document]['project_id_ssi'] + "-" + options[:document]['id'] +"'" + '])'
    else
      return "Not available for download"
    end

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

def get_chla_issues args
  journal = args['id']
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{journal}*+AND+has_model_ssim:\"Issue\"&wt=json&indent=true&sort=id%20asc&rows=100"))
  @response = response['response']['docs']
  return @response
end

def chla_thumbnail args
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{args['id']}_fs_1&wt=json&indent=true"))
  @response = response['response']['docs']
  return args['id']
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
  if collection == "The core historical literature of agriculture" || "Hive and Honeybee (needs editing)"
    return args[:document][args[:field]][0]
  else
    return args[:document][args[:field]]
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





end
