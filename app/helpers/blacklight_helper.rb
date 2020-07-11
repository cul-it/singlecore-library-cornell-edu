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
    new_params = params.permit(:controller, :action, :view, :id, :spatial_search_type, :coordinates)
    new_params[:spatial_search_type] = "point"
    new_params[:coordinates] = "#{point_coordinates[1]},#{point_coordinates[0]}"
    new_params[:view] = default_document_index_view_type
    link_to(t('blacklight.maps.interactions.point_search'), search_catalog_path(new_params.permit(:spatial_search_type, :coordinates, :view)))
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
            search_catalog_path(new_params.permit(:id, :spatial_search_type, :coordinates)))
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

# Link bibid field (bibid_tesim) to catalog record
def catalog_record options={}
  if options[:document]['bibid_tesim'].present?
    catalog_record = []
    options[:document]['bibid_tesim'].each do |bibid|
      r = link_to bibid, 'https://newcatalog.library.cornell.edu/catalog/' + bibid
      catalog_record << r
    end
    return catalog_record.join("<br>").html_safe
  end
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
  elsif options[:document]['map_measurement_tesim'].present? && options[:document]['map_measurement_unit_tesim'].present? &&
    !options[:document]['map_measurement_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ')'
      measurements << m_unit
    end
  else
    options[:document]['map_measurement_tesim'].present? && !options[:document]['map_measurement_unit_tesim'].present? &&
    !options[:document]['map_measurement_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement_tesim'].each do |measurement|
      m = measurement
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
  elsif options[:document]['map_measurement2_tesim'].present? && options[:document]['map_measurement2_unit_tesim'].present? &&
    !options[:document]['map_measurement2_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement2_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement2_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ')'
      measurements << m_unit
    end
  else
    options[:document]['map_measurement2_tesim'].present? && !options[:document]['map_measurement2_unit_tesim'].present? &&
    !options[:document]['map_measurement2_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement2_tesim'].each do |measurement|
      m = measurement
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
  elsif options[:document]['map_measurement3_tesim'].present? && options[:document]['map_measurement3_unit_tesim'].present? &&
    !options[:document]['map_measurement3_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement3_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement3_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ')'
      measurements << m_unit
    end
  else
    options[:document]['map_measurement3_tesim'].present? && !options[:document]['map_measurement3_unit_tesim'].present? &&
    !options[:document]['map_measurement3_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement3_tesim'].each do |measurement|
      m = measurement
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
  elsif options[:document]['map_measurement4_tesim'].present? && options[:document]['map_measurement4_unit_tesim'].present? &&
    !options[:document]['map_measurement4_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement4_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement4_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ')'
      measurements << m_unit
    end
  else
    options[:document]['map_measurement4_tesim'].present? && !options[:document]['map_measurement4_unit_tesim'].present? &&
    !options[:document]['map_measurement4_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement4_tesim'].each do |measurement|
      m = measurement
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
  elsif options[:document]['map_measurement5_tesim'].present? && options[:document]['map_measurement5_unit_tesim'].present? &&
    !options[:document]['map_measurement5_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement5_tesim'].each do |measurement|
      m = measurement  + ' ('
      measurements << m
    end
    options[:document]['map_measurement5_unit_tesim'].each do |measurement_unit|
      m_unit = measurement_unit + ')'
      measurements << m_unit
    end
  else
    options[:document]['map_measurement5_tesim'].present? && !options[:document]['map_measurement5_unit_tesim'].present? &&
    !options[:document]['map_measurement5_dimension_tesim'].present?
    measurements = []
    options[:document]['map_measurement5_tesim'].each do |measurement|
      m = measurement
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

def get_compound_object args
  if args['id'].start_with?('ss:')
    if args['compound_object_ssm'].present?
      if args['content_metadata_image_iiif_info_ssm'].present?
        # forum sometimes does not include the first media element's IIIF url
        default_iiif = render_document_show_field_value(:document => args, :field => 'content_metadata_image_iiif_info_ssm')
      end
      tileSources = []
      args['compound_object_ssm'].each { |json|
        compound = JSON.parse(json)
        if compound['iiif_url'].present?
          tileSources << compound['iiif_url'] + '/info.json'
        elsif default_iiif.present?
          tileSources << default_iiif
        end
      }
      return tileSources
    else
      # no compound objects available
      return []
    end
  end
  false
end

def get_aws_iiif_url args
  project = args['project_id_ssi'] || nil
  id = args['id'] || nil
  if project.present? && id.present?
    id.gsub!('ss:', '')
    prefix = "https://s3.amazonaws.com/sharedshelftosolr.library.cornell.edu/public"
    new_path = [ prefix, project, id, '1', 'iiif', 'info.json' ].join('/')
    if get_url_exists?(new_path)
      new_path
    else
      old_path = [ prefix, project, id, 'image', 'info.json' ].join('/')
    end
  end
end

def get_multiviews args
  collection = args['collection_tesim'][0]
  if args['work_sequence_isi'].present?
    sequence = 'work_sequence_isi'
    if args['card_number_tesim'].present?
      # impersonators
      parent = 'card_number_tesim'
    elsif args['catalog_number_tesim'].present?
      # seneca
      parent = 'catalog_number_tesim'
    elsif args['old_catalog_number_tesim'].present?
      # anthrocollections
      parent = 'old_catalog_number_tesim'
    end
  elsif args['portal_sequence_isi'].present?
    sequence = 'portal_sequence_isi'
    if args['plan_number_tesim'].present?
      # tellennasbeh
      parent = 'plan_number_tesim'
    end
  end
  return [] unless parent.present? && sequence.present?

  if args["#{parent}"].kind_of?(Array)
    parentid = args["#{parent}"].first.to_s
  else
    parentid = args["#{parent}"].to_s
  end
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=#{parent}:#{parentid}&fq=#{sequence}:[1%20TO%20*]&wt=json&indent=true&sort=#{sequence}%20asc&rows=100"))
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
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{journal}*+AND+has_model_ssim:\"Issue\"&wt=json&indent=true&sort=latest_date_isi%20asc,id%20asc&rows=10000"))
  @response = response['response']['docs']
  return @response
end

def get_chla_series args
  series = args['id']
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{series}*+AND+has_model_ssim:\"Series\"&wt=json&indent=true&sort=id%20asc&rows=10000"))
  @response = response['response']['docs']
  Rails.logger.info("STEPHANIEMILLER = #{@response.inspect}")
  return @response
end

def get_chla_series_book(id)
  book_id = id.rstrip
  book_id = book_id.lstrip
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{book_id}+AND+has_model_ssim:Book&wt=json&indent=true&sort=id%20asc&rows=10000"))
  @response = response['response']['docs']
  return @response[0]
end


def get_chla_tocs args
  journal = args['id']
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{journal}"))
  @response = response['response']['docs']
  return @response
end

def get_journal_title_given_issue_id(issue_id)
  idstring = issue_id.rstrip
  idstring = idstring.lstrip
  journalID = idstring[0..idstring.index('_') - 1]
  response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?fl=title_tesim&q=id:#{journalID}&wt=json"))
  @response = response['response']['docs'][0]
  return @response
end

def chla_thumbnail args
  if !args['id'].include?('articles')
   thumb = args['id']
   typeResponse = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{thumb}&wt=json&indent=true"))
   if typeResponse['response']['docs'][0]['format_tesim'][0].to_s == "Page" || typeResponse['response']['docs'][0]['format_tesim'][0].to_s == "Series"
     response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{thumb}&wt=json&indent=true"))
   else
     response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{thumb}_1&wt=json&indent=true"))
     if @response[0].nil?
        response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{thumb}&wt=json&indent=true"))
     end

   end
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
  mv = get_multiviews(args)
  mv.any?
end

def publication options={}
options[:document] # the original document
options[:field] # the field to render
options[:value] # the value of the field
if !options[:value].blank?
  return "#{options[:value][0]}, #{options[:document]["pubplace_tesim"][0]}, #{options[:document]["pubdate_tesim"][0]} "
end
end

def autolink_field args
  Rails.logger.info("MIAMI = #{args}")
  if !args[:document]["collection_tesim"].nil?
   collection = args[:document]["collection_tesim"][0]
   if (collection == "Persuasive Maps: PJ Mode Collection" || collection == "Digitizing Tell en-Naṣbeh, Biblical Mizpah of Benjamin")
    return auto_link(args[:document][args[:field]].join("<br>")).html_safe
   else
    return args[:document][args[:field]].join("<br>").html_safe
   end
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

def compound_field_display args
  field = args[:field]
  doc = args[:document]
  json = doc[field].first

  if json.present?
    compound = JSON.parse(json)
    parts = []
    compound.each do |row|
      row.each do |values|
        lines = []
        values.each do |key,value|
          lines << value
        end
        parts << lines.join(' - ')
      end
    end
    parts.join('<br />').html_safe
  end
end

def compound_measurement_field_display args
  field = args[:field]
  doc = args[:document]
  json = doc[field].first

  if json.present?
    compound = JSON.parse(json)
    parts = []
    compound.each do |row|
      row.each do |values|
        value = values['measurement']
        slug = []
        if values['measurement_units'].present?
          slug << values['measurement_units']
        end
        if values['measurement_dimension'].present?
          slug << values['measurement_dimension']
        end
        if slug.first.present?
          value += ' (' + slug.join(', ') + ')'
        end
        parts << value
      end
    end
    parts.join('<br />').html_safe
  end
end

def asset_visible?(document)
  # eid = id.sub(':', '\:')
  if document.id.present?
    eid = document.id.sub(':', '\:')
    environment = ENV['RAILS_ENV']
    if environment == 'development' || environment == 'test'
      # see app/controllers/application_controller.rb:100
      # leave out the work_sequence_isi:[2 TO *] clauses to allow viewing multi-image
      fqa = ['-active_fedora_model_ssi:"Page"',
        '-solr_loader_tesim:"eCommons"']
      fq = fqa.join(' AND ')
    else
      fq = @fq
      fq.slice! '-(work_sequence_isi:[2 TO *] AND -compound_object_count_isi:1) AND'
      fq
    end
    fq = URI.escape(fq)
    response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/select?q=id:#{eid}&fq=#{fq}&fl=id&wt=json&indent=true&rows=1")).with_indifferent_access
    count = response['response']['numFound']
    count > 0
  else
    false
  end
end

def get_url_exists?(url_string)
  url = URI.parse(url_string)
  req = Net::HTTP.new(url.host, url.port)
  req.use_ssl = (url.scheme == 'https')
  path = url.path if url.path.present?
  res = req.request_head(path || '/')
  if res.kind_of?(Net::HTTPRedirection)
    get_url_exists?(res['location']) # Go after any redirect and make sure you can access the redirected URL
  else
    ! %W(4 5).include?(res.code[0]) # Not from 4xx or 5xx families
  end
rescue Errno::ENOENT
  false #false if can't find the server
end

end

