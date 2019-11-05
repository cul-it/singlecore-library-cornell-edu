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
    if params[:subject] == "fallout" && params[:f].nil?
      facet_params = { f: { collection_tesim: ['Nuclear Fallout Shelter Collection'] } }
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
    config.add_facet_field 'collection_tesim', :label => 'Collection', :sort => 'index', :limit => true
    config.add_facet_field 'date_tesim', :label => 'Date', :limit => 5
    config.add_facet_field 'latest_date_isi', :label => 'Date Range',  range: {
                         num_segments: 6,
                         segments: true,
                         maxlength: 6
                       }
    config.add_facet_field 'creator_facet_tesim', :label => 'Creator', :sort => 'count', :limit => 5
    config.add_facet_field 'illustrator_creator_tesim', :label => 'Creator', :sort => 'count', :show => false
    config.add_facet_field 'second_creator_tesim', :label => 'Creator', :sort => 'count', :show => false
    config.add_facet_field 'photographer_creator_tesim', :label => 'Photographer', :show => false
    config.add_facet_field 'architect_creator_tesim', :label => 'Architect', :show => false
    config.add_facet_field 'location_tesim', :label => 'Location', :show => false
    config.add_facet_field 'type_tesim', :label => 'Work Type', :sort => 'count', :limit => 5
    config.add_facet_field 'system_tesim', :label => 'System', :sort => 'count', :show => false
    config.add_facet_field 'culture_tesim', :label => 'Culture', :sort => 'count', :show => false
    config.add_facet_field 'location_facet_tesim', :label => 'Location', :sort => 'count', :limit => 5
    config.add_facet_field 'loci_location_tesim', :label => 'Location', :sort => 'count', :limit => 5
    config.add_facet_field 'lang_tesim', :label => 'Language', :sort => 'count', :limit => 5
    config.add_facet_field 'subject_tesim', :label => 'Subject', :limit => 5, :sort => 'index'
    config.add_facet_field 'mat_tech_tesim', :label => 'Materials/Techniques', :show => true, :limit => 5
    config.add_facet_field 'deity_tesim', :label => 'Central Deity', :limit => 5, show: false
    config.add_facet_field 'founder_tesim', :label => 'Village Founder', :limit => 5, show: false
    config.add_facet_field 'fd_27325_tsi', :label => 'Year of photo', :limit => 5, show: false
    config.add_facet_field 'senechal_tesim', :label => 'Senechal', :limit => 5, show: false
    config.add_facet_field 'village_tesim', :label => 'Village', :limit => 5, show: false
    config.add_facet_field 'keywords_tesim', :label => 'Keywords', :limit => 5, show: false
    config.add_facet_field 'repository_tesim', :label => 'Repository', :limit => 5
    config.add_facet_field 'archival_collection_tesim', :label => 'Archival Collection', :limit => 5
    config.add_facet_field 'format_tesim', :label => 'Format', :limit => 5
    config.add_facet_field 'creation_site_location_tesim', :label => 'Site', show: false
    config.add_facet_field 'region_location_tesim', :label => 'Region', show: false
    config.add_facet_field 'set_title_tesim', :label => 'Set', :show => true, :limit => 5
    config.add_facet_field 'creator_tesim', :label => 'Creator', :show => false
    config.add_facet_field 'country_location_tesim', :label => 'Country', :show => false
    config.add_facet_field 'date_created_on_ssi', :label => 'Date posted', :show => false
    config.add_facet_field 'sub_coll_tesim', :label => 'Subcollection', :show => false
    config.add_facet_field 'principle_performer_creator_tesim', :label => 'Principal Performer', :show => false
    config.add_facet_field 'other_location_tesim', :label => 'Site', :show => false
    config.add_facet_field 'collecting_program_tesim', :label => 'Collecting Program', :show => false
    config.add_facet_field 'excavation_date', :label => 'Excavation Date', :show => false
    config.add_facet_field 'archaeological_date_tesim', :label => 'Archaeological Date', :show => false
    config.add_facet_field 'designer_creator_tesim', :label => 'Designer', :show => false
    config.add_facet_field 'writer_creator_tesim', :label => 'Writer', :show => false
    config.add_facet_field 'composer_creator_tesim', :label => 'Composer', :show => false
    config.add_facet_field 'musician_creator_tesim', :label => 'Musician', :show => false
    config.add_facet_field 'lyricist_creator_tesim', :label => 'Lyricist', :show => false
    config.add_facet_field 'arranger_creator_tesim', :label => 'Arranger', :show => false
    config.add_facet_field 'performer_creator_tesim', :label => 'Performer', :show => false
    config.add_facet_field 'map_site_tesim', :label => 'Site', :show => false

    if ENV["COLLECTIONS"] == "development"
      config.add_facet_field 'status_ssi', :label => 'Status'
    end

    # Have BL send all facet field names to Solr
    config.add_facet_fields_to_solr_request!

    # solr fields to be displayed in the index (search results) view
    config.add_index_field 'author_tesim', :label => 'Creator', :link_to_search => true
    config.add_index_field 'adler_creator_tesim', :label => 'Author', :link_to_search => :creator_facet_tesim
    config.add_index_field 'creator_tesim', :label => 'Creator', :link_to_search => true
    config.add_index_field 'principle_performer_creator_tesim', :label => 'Principal Performer', :link_to_search => true
    config.add_index_field 'photographer_creator_tesim', :label => 'Creator', :link_to_search => true
    config.add_index_field 'architect_creator_tesim', :label => 'Creator', :link_to_search => true
    config.add_index_field 'illustrator_creator_tesim', :label => 'Creator', :link_to_search => true
    config.add_index_field 'collection_tesim', :label => 'Collection', :link_to_search => true
    config.add_index_field 'occasion_tesim', :label => 'Occasion'
    config.add_index_field 'set_title_tesim', :label => 'Set', :link_to_search => true
    config.add_index_field 'common_name_tesim', :label => 'Common Name'
    config.add_index_field 'identifier_blaschka_isi', :label => 'Blaschka Number'
    config.add_index_field 'volume_tesim', :label => 'Volume'
    config.add_index_field 'page_tesim', :label => 'Page'

    # these index fields are from the dlxs collections
    config.add_index_field 'publication_tesim', :label => 'Publication'

    config.add_index_field 'publisher_tesim', :label => 'Publisher'
    config.add_index_field 'pubplace_tesim', :label => 'Publication Place'
    config.add_index_field 'pubdate_tesim', :label => 'Date'

    config.add_index_field 'image_ocr_tesim',:label => 'text'
    config.add_index_field 'book_title', :label => 'Book Title'
    config.add_index_field 'date_tesim', :label => 'Date'
    config.add_index_field 'serial_pub_date_range_ssi', :label => 'Publication Date Range'

    #config.add_index_field 'download_link_tesim', helper_method: 'image_download', :label => 'Download'

    if ENV["COLLECTIONS"] == "development"
      config.add_index_field 'collection_sequence_isi', :label => 'Collection Sequence'
    end

    # solr fields to be displayed in the show (single result) view

    # updated order for Metadata Application Profile
    # title
    config.add_show_field 'title_tesim', :label => 'Title'
    config.add_show_field 'pj_full_title_tesim', :label => 'Full Title'
    config.add_show_field 'map_title_language_tesim', :label => 'Title Language'
    config.add_show_field 'translation_title_tesim', :label => 'Translated Title'
    config.add_show_field 'map_title_language2_tesim', :label => 'Translated Title Language'
    config.add_show_field 'alternate_title_tesim', :label => 'Alternate Title'
    config.add_show_field 'project_title_tesim', :label => 'Project Title'
    config.add_show_field 'common_name_tesim', :label => 'Common Name'
    config.add_show_field 'yiddish_title_tesim', :label => 'Title (Yiddish)'
    config.add_show_field 'romanized_yiddish_title_tesim', :label => 'Romanized Title (Yiddish)'
    # collection
    config.add_show_field 'collection_tesim', :label => 'Collection', :link_to_search => true
    config.add_show_field 'sub_coll_tesim', :label => 'Subcollection', :link_to_search => true
    config.add_show_field 'dig_coll_tesim', :label => 'Digital Collection'
    config.add_show_field 'set_title_tesim', :label => 'Set', :link_to_search => true
    # creator
    config.add_show_field 'creator_tesim', :label => 'Creator', :link_to_search => true
    config.add_show_field 'role_tesim', :label => 'Creator Role'
    config.add_show_field 'yiddish_creator_tesim', :label => 'Creator (Yiddish)'
    config.add_show_field 'adler_creator_tesim', :label => 'Author', :link_to_search => :creator_facet_tesim
    config.add_show_field 'photographer_creator_tesim', :label => 'Photographer', :link_to_search => true
    config.add_show_field 'photographer_tesim', :label => 'Photographer'
    config.add_show_field 'author_tesim', :label => 'Creator', :link_to_search => true
    config.add_show_field 'illustrator_creator_tesim', :label => 'Creator', :link_to_search => true
    config.add_show_field 'second_creator_tesim', :label => 'Creator', :link_to_search => true
    config.add_show_field 'cataloger_tesim', :label => 'Cataloger'
    config.add_show_field 'performer_creator_tesim', :label => 'Performer', :link_to_search => true
    config.add_show_field 'principle_performer_creator_tesim', :label => 'Principal Performer', :link_to_search => true
    config.add_show_field 'performer_matrix_tesim', :label => 'Performer'
    config.add_show_field 'ensemble_note_tesim', :label => 'Ensemble Note'
    config.add_show_field 'founder_tesim', :label => 'Founder', :link_to_search => true
    config.add_show_field 'collector_tesim', :label => 'Collector'
    config.add_show_field 'creator_orig_tesim', :label => 'Original Creator'
    config.add_show_field 'other_creator_tesim', :label => 'Other Creator(s)'
    config.add_show_field 'project_owner_tesim', :label => 'Project Owner'
    config.add_show_field 'architect_creator_tesim', :label => 'Architect', :link_to_search => true
    config.add_show_field 'architectural_firm_creator_tesim', :label => 'Architectural Firm', :link_to_search => true
    config.add_show_field 'manufacturer_tesim', :label => 'Manufacturer'
    config.add_show_field 'writer_creator_tesim', :label => 'Writer', :link_to_search => true
    config.add_show_field 'composer_creator_tesim', :label => 'Composer', :link_to_search => true
    config.add_show_field 'musician_creator_tesim', :label => 'Musician', :link_to_search => true
    config.add_show_field 'lyricist_creator_tesim', :label => 'Lyricist', :link_to_search => true
    config.add_show_field 'arranger_creator_tesim', :label => 'Arranger', :link_to_search => true
    # date
    config.add_show_field 'date_tesim', :label => 'Date', :link_to_search => true
    config.add_show_field 'fd_27325_tsi', :label => 'Date taken', :link_to_search => true
    config.add_show_field 'full_text_date_tesim', :label => 'Date'
    config.add_show_field 'acq_date_tesim', :label => 'Acquisition Date'
    config.add_show_field 'acq_note_tesim', :label => 'Acquisition Note'
    config.add_show_field 'date_orig_tesim', :label => 'Original Date'
    config.add_show_field 'excavation_date_tesim', :label => 'Excavation Date', :link_to_search => true
    config.add_show_field 'archaeological_date_tesim', :label => 'Archaeological Date', :link_to_search => true
    config.add_show_field 'date_creator_birth_tesim', :label => 'Creator Birth Date'
    config.add_show_field 'date_creator_death_tesim', :label => 'Creator Death Date'
    config.add_show_field 'century_tesim', :label => 'Century'
    config.add_show_field 'date_created_on_ssi', :label => 'Date posted', :link_to_search => true
    # location
    config.add_show_field 'creation_site_location_tesim', :label => 'Site', :link_to_search => true
    config.add_show_field 'other_location_tesim', :label => 'Site', :link_to_search => true
    config.add_show_field 'map_site_tesim', :label => 'Site', :link_to_search => true
    config.add_show_field 'creation_site_orig_tesim', :label => 'Original Site'
    config.add_show_field 'location_tesim', :label => 'Location', :link_to_search => true
    config.add_show_field 'site_location_tesim', :label => 'Location'
    config.add_show_field 'local_name_location_tesim', :label => 'Place Name (Local)'
    config.add_show_field 'national_name_location_tesim', :label => 'Place Name (National)'
    config.add_show_field 'project_location_tesim', :label => 'Location'
    config.add_show_field 'city_location_tesim', :label => 'Location'
    config.add_show_field 'state_location_tesim', :label => 'State'
    config.add_show_field 'village_tesim', :label => 'Village', :link_to_search => true
    config.add_show_field 'senechal_tesim', :label => 'Senechal', :link_to_search => true
    config.add_show_field 'region_location_tesim', :label => 'Region', :link_to_search => true
    config.add_show_field 'country_location_tesim', :label => 'Country', :link_to_search => true
    config.add_show_field 'where_ssim', :label => 'Coordinates', :link_to_search => true
    config.add_show_field 'coordinates_tesim', :label => 'Coordinates'
    config.add_show_field 'latitude_tsi', :label => 'Latitude'
    config.add_show_field 'longitude_tsi', :label => 'Longitude'
    config.add_show_field 'venue1_tesim', :label => 'Venue 1'
    config.add_show_field 'venue1_address_tesim', :label => 'Address 1'
    config.add_show_field 'venue2_tesim', :label => 'Venue 2'
    config.add_show_field 'venue2_address_tesim', :label => 'Address 2'
    config.add_show_field 'venue3_tesim', :label => 'Venue 3'
    config.add_show_field 'venue3_address_tesim', :label => 'Address 3'
    config.add_show_field 'elevation_tesim', :label => 'Elevation'
    config.add_show_field 'addresscreator_tesim', :label => 'Address (Creator)'
    # identifier
    config.add_show_field 'id_number_tesim', :label => 'ID Number'
    config.add_show_field 'identifier_tesim', :label => 'Identifier', helper_method: :chla
    config.add_show_field 'accession_tesim', :label => 'Accession'
    config.add_show_field 'bibid_tesim', :label => 'Catalog Record', helper_method: :catalog_record
    config.add_show_field 'call_number_tesim', :label => 'Call Number'
    config.add_show_field 'reference_id_tesim', :label => 'Reference Identifier'
    config.add_show_field 'column_no_tesim', :label => 'Column Number'
    config.add_show_field 'first_line_no_tesim', :label => 'First Line Number'
    config.add_show_field 'last_line_no_tesim', :label => 'Last Line Number'
    config.add_show_field 'berlin_catalog_tesim', :label => 'Berlin Catalog'
    config.add_show_field 'stosch_cat_tesim', :label => 'Stosch Catalog Number'
    config.add_show_field 'winckelmann_no_tesim', :label => 'Winckelmann Number'
    config.add_show_field 'collection_number_tesim', :label => 'Collection Number'
    config.add_show_field 'card_number_tesim', :label => 'Card Number'
    config.add_show_field 'catalog_number_tesim', :label => 'Catalog Number'
    config.add_show_field 'identifier_blaschka_isi', :label => 'Blaschka Number'
    config.add_show_field 'identifier_cornell_isi', :label => 'Cornell Number'
    config.add_show_field 'plan_number_isi', :label => 'Plan Number'
    config.add_show_field 'internal_number_tesim', :label => 'Internal Number'
    config.add_show_field 'exhibit_number_tesim', :label => 'Exhibit Number'
    config.add_show_field 'railroad_reporting_mark_tesim', :label => 'Railroad Reporting Mark'
    config.add_show_field 'voigt_cat_no_tesim', :label => 'Voigt Catalog Number'
    config.add_show_field 'map_identifier2_tesim', :label => 'Context'
    config.add_show_field 'identifier2_tesim', :label => 'Topographic Map'
    config.add_show_field 'map_identifier3_tesim', :label => 'Original File Name'
    config.add_show_field 'old_catalog_number_tesim', :label => 'Old Catalog Number'
    config.add_show_field 'bam_number_tesim', :label => 'Bam Number'
    config.add_show_field 'item_number_tesim', :label => 'Item Number'

    # collection- and item-specific
    config.add_show_field 'occasion_tesim', :label => 'Occasion'
    config.add_show_field 'track_ssi', :label => 'Track'
    config.add_show_field 'track_isi', :label => 'Track'
    config.add_show_field 'deity_tesim', :label => 'Central Deity', :link_to_search => true
    config.add_show_field 'system_tesim', :label => 'System', :link_to_search => true
    config.add_show_field 'admission_cost_tesim', :label => 'Cost of Admission'
    config.add_show_field 'directions_tesim', :label => 'Directions'
    config.add_show_field 'dress_code_tesim', :label => 'Dress Code'
    config.add_show_field 'event_name_tesim', :label => 'Event Name'
    config.add_show_field 'guests_tesim', :label => 'Guests'
    config.add_show_field 'promoter_tesim', :label => 'Promoter'
    config.add_show_field 'expedition_tesim', :label => 'Expedition'
    config.add_show_field 'glacier_tesim', :label => 'Glacier'
    config.add_show_field 'denomination_tesim', :label => 'Denomination'
    config.add_show_field 'mint_location_tesim', :label => 'Mint Location'
    config.add_show_field 'obverse_tesim', :label => 'Obverse'
    config.add_show_field 'reverse_tesim', :label => 'Reverse'
    config.add_show_field 'metal_abbrev_tesim', :label => 'Metal Abbrev.'
    config.add_show_field 'lines_tesim', :label => 'Lines'
    config.add_show_field 'canto_tesim', :label => 'Canto'
    config.add_show_field 'canticle_tesim', :label => 'Canticle'
    config.add_show_field 'exhibition_tesim', :label => 'Exhibition'
    config.add_show_field 'israel_grid_tesim', :label => 'Israel Grid'
    config.add_show_field 'analysis_plan_tesim', :label => 'Analysis of Plan', helper_method: :autolink_field
    config.add_show_field 'election_tesim', :label => 'Election'
    config.add_show_field 'figure_subject_tesim', :label => 'Political Figure'
    config.add_show_field 'party_subject_tesim', :label => 'Political Party'
    config.add_show_field 'station_yard_tesim', :label => 'Station/Yard'
    config.add_show_field 'recipient_tesim', :label => 'Recipient'
    config.add_show_field 'organization_tesim', :label => 'Organization'
    config.add_show_field 'edition_tesim', :label => 'Edition'
    config.add_show_field 'map_scale_tesim', :label => 'Scale'
    config.add_show_field 'map_sheet_tesim', :label => 'Sheet'
    config.add_show_field 'map_species_tesim', :label => 'Species'
    config.add_show_field 'original_blaschka_species_tesim', :label => 'Original Blaschka Species Name'
    # translation, transcription, etc.
    config.add_show_field 'translation_tesim', :label => 'Translation'
    config.add_show_field 'inscription_tesim', :label => 'Inscription'
    config.add_show_field 'transcription_tesim', :label => 'Transcription', helper_method: :autolink_field
    config.add_show_field 'r2_transcription_tesim', :label => 'Transcription 2', helper_method: :autolink_field
    config.add_show_field 'devanagari_hamlet_tesim', :label => 'Hamlet (Devanagari)'
    config.add_show_field 'roman_hamlet_tesim', :label => 'Hamlet (Roman Characters)'
    config.add_show_field 'translation_of_tesim', :label => 'Translation of'
    config.add_show_field 'translation_as_tesim', :label => 'Translated as', helper_method: :autolink_field
    # work type, subject, etc.
    config.add_show_field 'lang_tesim', :label => 'Language'
    config.add_show_field 'culture_tesim', :label => 'Culture', :link_to_search => true
    config.add_show_field 'culture_orig_tesim', :label => 'Original Culture'
    config.add_show_field 'style_period_tesim', :label => 'Style/Period'
    config.add_show_field 'archaeological_style_period_tesim', :label => 'Archaeological Period'
    config.add_show_field 'style_orig_tesim', :label => 'Original Style'
    config.add_show_field 'type_tesim', :label => 'Work Type', :link_to_search => true
    config.add_show_field 'mat_tech_tesim', :label => 'Materials/Techniques', :link_to_search => true
    config.add_show_field 'mat_tech_orig_tesim', :label => 'Original Materials and Techniques'
    config.add_show_field 'subject_tesim', :label => 'Subject', :link_to_search => true
    config.add_show_field 'subject_reps_tesim', :label => 'Reps Subject'
    config.add_show_field 'keywords_tesim', :label => 'Keywords', :link_to_search => true
    config.add_show_field 'img_view_desc_tesim', :label => 'Image View Description'
    config.add_show_field 'img_view_type_tesim', :label => 'Image View Type'
    config.add_show_field 'image_view_type_tesim', :label => 'Image View Type'
    # item size
    config.add_show_field 'extent_tesim', :label => 'Extent', helper_method: :extent_units
    config.add_show_field 'measurement_units_tesim', :label => 'Measurement Units'
    config.add_show_field 'extent_orig_tesim', :label => 'Original Extent'
    config.add_show_field 'letter_height_tesim', :label => 'Letter Height'
    config.add_show_field 'metric_unit_tesim', :label => 'Metric Unit'
    config.add_show_field 'metric_height_tesim', :label => 'Metric Height'
    config.add_show_field 'metric_width_tesim', :label => 'Metric Width'
    config.add_show_field 'metric_depth_tesim', :label => 'Metric Depth'
    config.add_show_field 'metric_diameter_tesim', :label => 'Metric Diameter'
    config.add_show_field 'original_extent_tesim', :label => 'Original Dimensions'
    config.add_show_field 'map_measurement_tesim', :label => 'Measurement', helper_method: :measurements
    # config.add_show_field 'map_measurement_unit_tesim', :label => 'Unit'
    # config.add_show_field 'map_measurement_dimension_tesim', :label => 'Dimension'
    config.add_show_field 'map_measurement2_tesim', :label => 'Measurement 2', helper_method: :measurements2
    # config.add_show_field 'map_measurement2_unit_tesim', :label => 'Unit 2'
    # config.add_show_field 'map_measurement2_dimension_tesim', :label => 'Dimension 2'
    config.add_show_field 'map_measurement3_tesim', :label => 'Measurement 3', helper_method: :measurements3
    # config.add_show_field 'map_measurement3_unit_tesim', :label => 'Unit 3'
    # config.add_show_field 'map_measurement3_dimension_tesim', :label => 'Dimension 3'
    config.add_show_field 'map_measurement4_tesim', :label => 'Measurement 4', helper_method: :measurements4
    # config.add_show_field 'map_measurement4_unit_tesim', :label => 'Unit 4'
    # config.add_show_field 'map_measurement4_dimension_tesim', :label => 'Dimension 4'
    config.add_show_field 'map_measurement5_tesim', :label => 'Measurement 5', helper_method: :measurements5
    # config.add_show_field 'map_measurement5_unit_tesim', :label => 'Unit 5'
    # config.add_show_field 'map_measurement5_dimension_tesim', :label => 'Dimension 5'
    # description, notes
    config.add_show_field 'description_tesim', :label => 'Description', helper_method: :autolink_field
    config.add_show_field 'devanagari_description_tesim', :label => 'Description (Devanagari)'
    config.add_show_field 'collectors_notes_tesim', :label => 'Collector\'s Notes', helper_method: :autolink_field
    config.add_show_field 'note_tesim', :label => 'Note', helper_method: :autolink_field
    config.add_show_field 'notes_2_tesim', :label => 'Note'
    config.add_show_field 'annotation_tesim', :label => 'Annotation'
    config.add_show_field 'condition_tesim', :label => 'Condition'
    # references, publishing info
    config.add_show_field 'map_relationships_tesim', :label => 'Relationships', helper_method: :relationships
    config.add_show_field 'publication_tesim', :label => 'Publication'
    config.add_show_field 'publisher_tesim', :label => 'Publisher'
    config.add_show_field 'pubplace_tesim', :label => 'Publication Place'
    config.add_show_field 'publication_location_tesim', :label => 'Location of Publication'
    config.add_show_field 'pubdate_tesim', :label => 'Publication Date'
    config.add_show_field 'source_tesim', :label => 'Source'
    config.add_show_field 'map_source_tesim', :label => 'Source'
    config.add_show_field 'volume_tesim', :label => 'Volume'
    config.add_show_field 'page_tesim', :label => 'Page'
    config.add_show_field 'reference_tesim', :label => 'References', helper_method: :autolink_field
    config.add_show_field 'art_bio_tesim', :label => 'Artist Biography', helper_method: :autolink_field
    config.add_show_field 'creator_bio_tesim', :label => 'Creator Biography'
    config.add_show_field 'donor_tesim', :label => 'Donor'
    config.add_show_field 'relation_tesim', :label => 'Relation'
    config.add_show_field 'series_relation_tesim', :label => 'Series'
    config.add_show_field 'bibliography_tesim', :label => 'Bibliography', helper_method: :autolink_field
    config.add_show_field 'cite_as_tesim', :label => 'Cite As'
    # archival collection info
    config.add_show_field 'repository_tesim', :label => 'Repository', :link_to_search => true
    config.add_show_field 'location_repo_tesim', :label => 'Repository Location'
    config.add_show_field 'repo_orig_tesim', :label => 'Original Repository'
    config.add_show_field 'collecting_program_tesim', :label => 'Collecting Program', :link_to_search => true
    config.add_show_field 'archival_collection_tesim', :label => 'Archival Collection', :link_to_search => true
    config.add_show_field 'provenance_tesim', :label => 'Provenance'
    config.add_show_field 'box_box_folder_tesim', :label => 'Box'
    config.add_show_field 'folder_box_folder_tesim', :label => 'Folder'
    # display at end
    config.add_show_field 'rights_tesim', :label => 'Rights', helper_method: :autolink_field
    config.add_show_field 'rights_img_tesim', :label => 'Image Rights'
    config.add_show_field 'disclaimer_tesim', :label => 'Disclaimer'
    config.add_show_field 'serial_pub_date_range_ssi', :label => 'Publication Date Range'
    if ENV["COLLECTIONS"] == "development"
      config.add_show_field 'work_sequence_isi', :label => 'Work Sequence'
    end

    # "fielded" search configuration. Used by pulldown among other places.


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
    config.add_sort_field 'author_t asc, latest_date_isi asc', :label => 'author (a to z)'

    # If there are more than this many search results, no spelling ("did you
    # mean") suggestion is offered.
    config.spell_max = 5
  end


end
