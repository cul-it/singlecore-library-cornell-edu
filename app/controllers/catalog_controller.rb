# -*- encoding : utf-8 -*-

class CatalogController < ApplicationController

  include BlacklightRangeLimit::ControllerOverride
  include Blacklight::Catalog
  include BlacklightMaps::ControllerOverride

  before_action  do
    if params[:sbjct].present? && params[:f].nil?
      redirect_to search_catalog_path
    end
    if params[:subject] == "adler" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Adler Hip Hop Archive'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "adwhite" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Andrew Dickson White Architectural Photographs Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "ahearn" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Charlie Ahearn Archive'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "alisonmasonkingsbury" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Alison Mason Kingsbury: Life and Art'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "anthrocollections" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Selections from the Cornell Anthropology Collections'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "art2301" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Art 2301 Printmaking Student Portfolios'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "afrika-bambaataa" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Afrika Bambaataa Vinyl Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "bastides" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['John Reps Collection - Bastides'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "beyondthetaj" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Beyond the Taj: Architectural Traditions and Landscape Experience in South Asia'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "bolivianpamphlets" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Alfred Montalvo Bolivian Digital Pamphlets Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "blaschka" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Cornell Collection of Blaschka Invertebrate Models'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "cast" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Cornell Cast Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "coin" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Cornell Coin Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "divinecomedy" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Divine Comedy Image Archive'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "efraimracker" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Efraim Racker Art Albums'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "eleusis" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Mysteries at Eleusis: Images of Inscriptions'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "gems" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Cornell Gem Impressions Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "hill-ornithology" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Hill Ornithology Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "hiphopflyers" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Hip Hop Party and Event Flyers'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "howell" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Icelandic and Faroese Photographs of Frederick W.W. Howell'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "huntingtonfreelibrary" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Huntington Free Library Native American Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "isbellandes" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Billie Jean Isbell Andean Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "japanesetheater" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Theatre Prints and Books from Early Modern Japan'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "japaneseworld" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Knowledge of the World in Early Modern Japan'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "jcm-iceland" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['John Clair Miller Image Collection of Twentieth-Century Architecture in Iceland'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "joeconzo" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Joe Conzo Jr. Archive'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "johnclairmiller" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['John Clair Miller'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "johnreps" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['John Reps Collection - Urban Explorer'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "karma" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Kroch Asia Rare Materials Archive'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "kmoddl" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Reuleaux Kinematic Mechanisms Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "lindsaycooper" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Lindsay Cooper Digital Archive'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "loewentheil" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Loewentheil Collection of African-American Photographs'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "maps" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Cornell University Library Map Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "obama" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Obama Visual Iconography'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "paniccioli" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Ernie Paniccioli Photo Archive'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "persuasivemaps" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Persuasive Maps: PJ Mode Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "political-americana" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Political Americana'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "punkflyers" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Punk Flyers'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "railroad" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['U.S. President\'s Railroad Commission Photographs'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "rmc" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Images from the Rare Book and Manuscript Collections'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "rudin" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Rudin Slavery Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "squeeze" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Cornell Squeeze Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "sterrett" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['The J. R. Sitlington Sterrett Collection of Archaeological Photographs'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "straight" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Willard D. Straight in Korea'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "tamang" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Digital Tamang'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "tell-en-nasbeh" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Digitizing Tell en-Naṣbeh, Biblical Mizpah of Benjamin'] } }
      redirect_to search_catalog_path(facet_params)
    end
    if params[:subject] == "vicos" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Vicos Collection'] } }
      redirect_to search_catalog_path(facet_params)
    end

    @fq = set_fq(ENV["COLLECTIONS"])
      blacklight_config.default_solr_params = {:fq => @fq }
    end

    configure_blacklight do |config|
    config.view.gallery.partials = [:index_header]
    ## Default parameters to send to solr for all search-like requests. See also SearchBuilder#processed_parameters
    config.default_solr_params = {
      :qt => 'search',
      :rows => 10,
      :fl => '*,score',
          }

    config.max_r_count = {
      :date => 4,
      :title => 4,
      :measurement => 6,
      :identifier => 6,
      :agent => 6,
      :legacy_value => 7,
    }

    config.default_per_page = 20

    ## blacklight-maps configuration default values
    # see https://github.com/projectblacklight/blacklight-maps
    config.view.maps.geojson_field = "geojson_ssim"
    config.view.maps.placename_property = "title_tesim"
    config.view.maps.coordinates_field = "where_geocoordinates"
    config.view.maps.search_mode = "coordinates" # "placename" or "coordinates"
    config.view.maps.spatial_query_dist = 0.005
    config.view.maps.placename_field = "title_tesim"
    config.view.maps.coordinates_facet_field = "geojson_ssim"
    config.view.maps.facet_mode = "geojson" # "geojson" or "coordinates"

    config.add_facet_field 'geojson_ssim', :limit => -2, :label => 'Coordinates', :show => false

    # solr field configuration for search results/index views
    config.index.title_field = 'title_tesim'
    config.index.thumbnail_method = :render_thumbnail
    config.index.display_type_field = 'project_id_ssi'
    config.index.document_actions.delete(:bookmark)
    config.show.document_actions.delete(:bookmark)
    config.navbar.partials.delete(:bookmark)
    # solr field configuration for document/show views
    config.show.title_field = 'title_tesim'
    config.show.display_type_field = 'project_id_ssi'

    # solr fields that will be treated as facets by the blacklight application
    config.add_facet_field 'collection_tesim', :label => 'Collection', :sort => 'index', :limit => 5, :collapse => false
    config.add_facet_field 'format_tesim', :label => 'Format', :limit => 5, :collapse => false
    config.add_facet_field 'date_tesim', :label => 'Date', :limit => 5
    config.add_facet_field 'latest_date_isi', :label => 'Date Range',  range: {
                         num_segments: 6,
                         segments: true,
                         maxlength: 6
                       }
    config.add_facet_field 'agent_tesim', :label => 'Agent', :sort => 'count', :limit => 5
    config.add_facet_field 'location_tesim', :label => 'Location', :show => false
    config.add_facet_field 'work_type_tesim', :label => 'Work Type' # 56
    config.add_facet_field 'culture_tesim', :label => 'Culture', :sort => 'count', :show => false
    config.add_facet_field 'location_facet_tesim', :label => 'Location', :sort => 'count', :limit => 5
    config.add_facet_field 'loci_location_tesim', :label => 'Location', :sort => 'count', :limit => 5
    config.add_facet_field 'lang_tesim', :label => 'Language', :sort => 'count', :limit => 5
    config.add_facet_field 'subject_tesim', :label => 'Subject', :limit => 5, :sort => 'index'
    config.add_facet_field 'mat_tech_tesim', :label => 'Materials/Techniques', :show => true, :limit => 5
    config.add_facet_field 'keywords_tesim', :label => 'Keywords', :limit => 5, show: false
    config.add_facet_field 'repository_tesim', :label => 'Repository', :limit => 5
    config.add_facet_field 'archival_collection_tesim', :label => 'Archival Collection', :limit => 5
    config.add_facet_field 'creation_site_location_tesim', :label => 'Site', show: false
    config.add_facet_field 'region_location_tesim', :label => 'Region', show: false
    config.add_facet_field 'set_title_tesim', :label => 'Set', :show => true, :limit => 5
    config.add_facet_field 'creator_tesim', :label => 'Creator', :show => false
    config.add_facet_field 'country_location_tesim', :label => 'Country', :show => false
    config.add_facet_field 'sub_coll_tesim', :label => 'Subcollection', :show => false
    config.add_facet_field 'other_location_tesim', :label => 'Site', :show => false
    config.add_facet_field 'collecting_program_tesim', :label => 'Collecting Program', :show => false

    if "#{ENV['COLLECTIONS']}" == "development"
      config.add_facet_field 'status_ssi', :label => 'Status'
    end

    # Have BL send all facet field names to Solr
    config.add_facet_fields_to_solr_request!

    # solr fields to be displayed in the index (search results) view
    #config.add_index_field 'agent_hash_tesim', :label => 'Agent', helper_method: :compound_field_display, :link_to_search => true
    for n in 1..config.max_r_count[:agent]
      label = 'Agent' + (n == 1 ? '' : ' ' + n.to_s)
      config.add_index_field 'r' + n.to_s + '_agent_tesim', :label => label, if: :display_agent_show_field?
    end

    config.add_index_field 'archival_collection_tesim', :label => 'Archival Collection', :link_to_search => true # 37
    config.add_index_field 'country_tesim', :label => 'Country', :link_to_search => true # 38
    config.add_index_field 'culture_tesim', :label => 'Culture', :link_to_search => true # 34
    #config.add_index_field 'date_hash_tesim', :label => 'Date', helper_method: :compound_field_display
    for n in 1..config.max_r_count[:agent]
      label = 'Date' + (n == 1 ? '' : ' ' + n.to_s)
      config.add_index_field 'r' + n.to_s + '_date_tesim', :label => label, if: :display_date_show_field?
    end

    config.add_index_field 'description_tesim', :label => 'Description' # 53
    config.add_index_field 'earliest_date_isi', :label => 'Earliest Date' # 60
    #config.add_index_field 'identifier_hash_tesim', :label => 'Identifier', helper_method: :compound_field_display
    for n in 1..config.max_r_count[:identifier]
      label = 'Identifier' + (n == 1 ? '' : ' ' + n.to_s)
      config.add_index_field 'r' + n.to_s + '_identifier_tesim', :label => label, if: :display_identifier_show_field?
    end

    config.add_index_field 'keywords_subject_tesim', :label => 'Keywords' # 3
    config.add_index_field 'latest_date_isi', :label => 'Latest Date' # 60
    config.add_index_field 'location_tesim', :label => 'Location', :link_to_search => true # 46
    config.add_index_field 'mat_tech_tesim', :label => 'Materials/Techniques' # 36
    config.add_index_field 'repository_tesim', :label => 'Repository', :link_to_search => true # 58
    config.add_index_field 'subject_tesim', :label => 'Subject', :link_to_search => true # 50
    config.add_index_field 'work_type_tesim', :label => 'Work Type' # 56
    config.add_index_field 'book_title', :label => 'Book Title'
    #config.add_index_field 'date_tesim', :label => 'Date'
    config.add_index_field 'serial_pub_date_range_ssi', :label => 'Publication Date Range'
    config.add_index_field 'format_tesim', :label => 'Format'

    if "#{ENV['COLLECTIONS']}" == "development"
      config.add_index_field 'collection_sequence_isi', :label => 'Collection Sequence'
    end

    # solr fields to be displayed in the show (single result) view
    # these are generated from the digcoll-ingest collections and the MAP spreadsheet

    # Title qualifier
    #config.add_show_field 'title_tesim', :label => 'Title'
    #config.add_show_field 'title_language_tesim', :label => 'Title Language'
    #config.add_show_field 'title_hash_tesim', :label => 'Title', helper_method: :compound_field_display
    for n in 1..config.max_r_count[:title]
      label = 'Title' + (n == 1 ? '' : ' ' + n.to_s)
      config.add_show_field 'r' + n.to_s + '_title_tesim', :label => label, if: :display_title_show_field?
    end

    config.add_show_field 'archival_collection_tesim', :label => 'Archival Collection', :link_to_search => true # 37
    config.add_show_field 'bibid_tesim', :label => 'BibID', helper_method: :catalog_record # 3
    config.add_show_field 'box_tesim', :label => 'Box' # 20
    config.add_show_field 'cite_as_tesim', :label => 'Cite As' # 31
    config.add_show_field 'collecting_program_tesim', :label => 'Collecting Program', :link_to_search => true # 7
    config.add_show_field 'collection_tesim', :label => 'Collection', :link_to_search => true
    config.add_show_field 'created_on_tsi', :label => 'Created On' # 63
    config.add_show_field 'created_by_tesim', :label => 'Created By', :link_to_search => true # 63
    config.add_show_field 'dcmi_type_tesim', :label => 'DCMI Type' # 2
    config.add_show_field 'elevation_tesim', :label => 'Elevation' # 7
    config.add_show_field 'filename_s', :label => 'Filename' # 63
    config.add_show_field 'finding_aid_tesim', :label => 'Archival Finding Aid' # 26
    config.add_show_field 'folder_tesim', :label => 'Folder' # 17
    config.add_show_field 'id_number_tesim', :label => 'ID Number', helper_method: :chla # 61
    config.add_show_field 'latitude_tsi', :label => 'Latitude' # 21
    config.add_show_field 'longitude_tsi', :label => 'Longitude' # 21
    config.add_show_field 'preservation_collection__id_tesim', :label => 'PreservationCollectionID' # 10
    config.add_show_field 'preservation_item_id_tesim', :label => 'PreservationItemID' # 10
    config.add_show_field 'publish_to_portal_tesim', :label => 'Publish to Portal' # 4

    # Agent Roles qualifier
    #config.add_show_field 'agent_hash_tesim', :label => 'Agent', helper_method: :compound_field_display
    #config.add_show_field 'agent_hash_tesim', :label => 'Agent', accessor: :agent_hash
    #config.add_show_field 'r1_agent_tesim', :label => 'Agent', if: :display_agent_show_field?
    for n in 1..config.max_r_count[:agent]
      label = 'Agent' + (n == 1 ? '' : ' ' + n.to_s)
      config.add_show_field 'r' + n.to_s + '_agent_tesim', :label => label, if: :display_agent_show_field?
    end

    config.add_show_field 'alternate_title_tesim', :label => 'Alternate Title' # 5
    config.add_show_field 'annotation_tesim', :label => 'Annotation' # 3
    config.add_show_field 'bibliography_tesim', :label => 'Bibliography' # 7
    config.add_show_field 'cataloger_tesim', :label => 'Cataloger' # 4
    config.add_show_field 'condition_tesim', :label => 'Condition' # 3
    config.add_show_field 'country_tesim', :label => 'Country', :link_to_search => true # 38
    config.add_show_field 'culture_tesim', :label => 'Culture', :link_to_search => true # 34

    # Date type qualifier
    #config.add_show_field 'date_hash_tesim', :label => 'Date', helper_method: :compound_field_display
    #config.add_show_field 'r1_date_tesim', :label => 'Date', if: :display_date_show_field?
    for n in 1..config.max_r_count[:agent]
      label = 'Date' + (n == 1 ? '' : ' ' + n.to_s)
      config.add_show_field 'r' + n.to_s + '_date_tesim', :label => label, if: :display_date_show_field?
    end

    config.add_show_field 'description_tesim', :label => 'Description' # 53
    config.add_show_field 'event_name_tesim', :label => 'Event' # 7
    config.add_show_field 'exhibition_tesim', :label => 'Exhibition' # 1

    # Identifier type qualifier
    #config.add_show_field 'identifier_hash_tesim', :label => 'Identifier', helper_method: :compound_field_display
    #config.add_show_field 'r1_identifier_tesim', :label => 'Identifier', if: :display_identifier_show_field?
    for n in 1..config.max_r_count[:identifier]
      label = 'Identifier' + (n == 1 ? '' : ' ' + n.to_s)
      config.add_show_field 'r' + n.to_s + '_identifier_tesim', :label => label, if: :display_identifier_show_field?
    end

    # "Image View Description and Image View Type are separate fields and a record is not required to have either." -mhk33 3/31/2020
    #config.add_show_field 'image_view_desc_hash_tesim', :label => 'Image View', helper_method: :compound_field_display
    config.add_show_field 'image_view_type_tesim', :label => 'Image View Type'
    config.add_show_field 'image_view_desc_tesim', :label => 'Image View Description'

    config.add_show_field 'inscription_tesim', :label => 'Inscription' # 9
    config.add_show_field 'kaltura_id_ssm', :label => 'Kaltura ID' # 3
    config.add_show_field 'kaltura_playlist_ssm', :label => 'Kaltura Playlist' # 1
    config.add_show_field 'keywords_subject_tesim', :label => 'Keywords' # 3
    config.add_show_field 'language_tesim', :label => 'Language' # 12

    # Legacy label and value qualifier
    #config.add_show_field 'legacy_label_hash_tesim', :label => 'Legacy Label', helper_method: :compound_field_display
    #config.add_show_field 'r1_legacy_value_tesim', :label => 'Legacy Value', if: :display_legacy_value_show_field?
    for n in 1..config.max_r_count[:legacy_value]
      label = 'Legacy value' + (n == 1 ? '' : ' ' + n.to_s)
      config.add_show_field 'r' + n.to_s + '_legacy_value_tesim', :label => label, if: :display_legacy_value_show_field?
    end

    config.add_show_field 'location_tesim', :label => 'Location', :link_to_search => true # 46
    config.add_show_field 'mat_tech_tesim', :label => 'Materials/Techniques', :link_to_search => true # 36

    # Measurement qualifiers
    config.add_show_field 'measurement_hash_tesim', :label => 'Measurement', helper_method: :compound_measurement_field_display

    config.add_show_field 'notes_tesim', :label => 'Notes' # 33
    config.add_show_field 'ocr_transcription_tesim', :label => 'OCR Text' # 1
    config.add_show_field 'provenance_tesim', :label => 'Provenance' # 9
    config.add_show_field 'reference_tesim', :label => 'References' # 2
    config.add_show_field 'related_work_tesim', :label => 'Related Work' # 3
    config.add_show_field 'relationships_tesim', :label => 'Relationships' # 9
    config.add_show_field 'rights_tesim', :label => 'Rights' # 61
    config.add_show_field 'series_tesim', :label => 'Series' # 7
    config.add_show_field 'site_tesim', :label => 'Site', :link_to_search => true # 22
    config.add_show_field 'source_tesim', :label => 'Source' # 21
    config.add_show_field 'species_tesim', :label => 'Species' # 2
    config.add_show_field 'subject_tesim', :label => 'Subject', :link_to_search => true # 50
    config.add_show_field 'sub_coll_tesim', :label => 'Subcollection', :link_to_search => true
    config.add_show_field 'transcription_tesim', :label => 'Transcription' # 10
    config.add_show_field 'translation_as_tesim', :label => 'isTranslatedAs' # 1
    config.add_show_field 'translation_of_tesim', :label => 'isTranslationOf' # 1
    config.add_show_field 'translation_tesim', :label => 'Translation' # 3
    config.add_show_field 'venue_tesim', :label => 'Venue' # 4
    config.add_show_field 'repository_tesim', :label => 'Repository', :link_to_search => true # 58
    config.add_show_field 'set_title_tesim', :label => 'Set Title', :link_to_search => true # 8
    config.add_show_field 'style_period_tesim', :label => 'Style/Period' # 21
    config.add_show_field 'updated_by_tesim', :label => 'Updated By' # 63
    config.add_show_field 'updated_on_ss', :label => 'Updated On' # 63
    config.add_show_field 'vol_issue_no_tesim', :label => 'Volume/Issue' # 3
    if ENV["COLLECTIONS"] == "development"
      config.add_show_field 'work_sequence_isi', :label => 'Work Sequence' # 5
    end
    config.add_show_field 'type_tesim', :label => 'Work Type' # 56

    # special case fields that were not in the MAP spreadsheet
    config.add_show_field 'where_ssim', :label => 'Coordinates', :link_to_search => true

    config.add_search_field 'all_fields', :label => 'All Fields'
    config.add_search_field('title') do |field|
      field.solr_local_parameters = {
        :qf => '$title_qf',
        :pf => '$title_pf'
      }
    end

    config.add_search_field('creator') do |field|
      field.solr_local_parameters = {
        :qf => '$author_qf',
        :pf => '$author_pf',
      }
    end

    config.add_search_field('subject') do |field|
      field.solr_local_parameters = {
        :qf => '$subject_qf',
        :pf => '$aubject_pf',
      }
    end



    # "sort results by" select (pulldown)
    config.add_sort_field 'collection_sequence_isi asc, portfolio_creator_ssi asc, identifier_blaschka_isi asc, score desc, latest_date_isi asc', :label => 'relevance'
    config.add_sort_field 'latest_date_isi desc, title_tesi asc', :label => 'year (descending)'
    config.add_sort_field 'latest_date_isi asc, title_tesi asc', :label => 'year (ascending)'
    config.add_sort_field 'title_ssi asc, latest_date_isi asc', :label => 'title (a to z)'
    config.add_sort_field 'title_ssi desc, latest_date_isi desc', :label => 'title (z to a)'
    config.add_sort_field 'creator_ssi asc, latest_date_isi asc', :label => 'author (a to z)'

    # If there are more than this many search results, no spelling ("did you
    # mean") suggestion is offered.
    config.spell_max = 5
  end

  def display_agent_show_field?(field_config, solr_doc)
    field = field_config['field']
    parts = field.split('_')
    role = parts.first + '_agent_role_' + parts.last
    qualifier = solr_doc[role]
    if qualifier.present?
      field_config['label'] = qualifier.first.split.map(&:capitalize).join(' ')
    end
    return true
  end

  def display_date_show_field?(field_config, solr_doc)
    field = field_config['field']
    parts = field.split('_')
    role = parts.first + '_date_type_' + parts.last
    qualifier = solr_doc[role]
    if qualifier.present?
      field_config['label'] = qualifier.first.split.map(&:capitalize).join(' ') + ' Date'
    end
    return true
  end

  def display_identifier_show_field?(field_config, solr_doc)
    field = field_config['field']
    parts = field.split('_')
    role = parts.first + '_identifier_type_' + parts.last
    qualifier = solr_doc[role]
    if qualifier.present?
      field_config['label'] = qualifier.first.split.map(&:capitalize).join(' ')
    end
    return true
  end

  def display_legacy_value_show_field?(field_config, solr_doc)
    field = field_config['field']
    parts = field.split('_')
    role = parts.first + '_legacy_label_' + parts.last
    qualifier = solr_doc[role]
    if qualifier.present?
      field_config['label'] = qualifier.first.split.map(&:capitalize).join(' ')
    end
    return true
  end

  def display_measurement_show_field?(field_config, solr_doc)
    field = field_config['field']
    parts = field.split('_')
    role = parts.first + '_measurement_dimension_' + parts.last
    label = []
    qualifier = solr_doc[role]
    if qualifier.present?
      label << qualifier.first
    end
    role = parts.first + '_measurement_units_' + parts.last
    qualifier = solr_doc[role]
    if qualifier.present?
      label << qualifier.first
    end
    text = label.join(' ')
    if text.present?
      field_config['label'] = text.split.map(&:capitalize).join(' ')
    end
    return true
  end

  def display_title_show_field?(field_config, solr_doc)
    field = field_config['field']
    parts = field.split('_')
    role = parts.first + '_title_language_' + parts.last
    qualifier = solr_doc[role]
    if qualifier.present?
      # remove parens then prefix and surround with parens
      field_config['label'] = 'Title (' + qualifier.first.gsub(/[()]/,"").split.map(&:capitalize).join(' ') + ')'
    end
    return true
  end

end
