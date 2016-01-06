# -*- encoding : utf-8 -*-

class CatalogController < ApplicationController

    include Blacklight::Catalog
      before_action  do
          if params[:sbjct].present? && params[:f].nil?
            redirect_to catalog_index_path
          end
          if params[:subject] == "ragamala" && params[:f].nil?
            facet_params = { f: { collection_tesim: ['Ragamala Paintings'] } }
            redirect_to catalog_index_path(facet_params) + "&sbjct=ragamala"
          elsif params[:subject] == "aerialny" && params[:f].nil? && params[:pageid].nil?
            facet_params = { f: { collection_tesim: ['New York State Aerial Photographs'] } }
            redirect_to catalog_index_path(facet_params) + "&sbjct=aerialny"
          end
            if ENV["COLLECTIONS"] == "development"
              blacklight_config.default_solr_params = {:fq => '-status_ssi:"Unpublished" AND -status_ssi:"Suppressed" AND -active_fedora_model_ssi:"Page" AND -collection_tesim:"Core Historical Library of Agriculture"'}
            elsif ENV["COLLECTIONS"] == "production"
                blacklight_config.default_solr_params = {:fq => '-status_ssi:"Unpublished" AND -status_ssi:"Suppressed" AND -active_fedora_model_ssi:"Page"
                    AND +(collection_tesim:"New York State Aerial Photographs"
                    OR collection_tesim:"Huntington Free Library Native American Collection"
                    OR collection_tesim:"John Reps Collection - Bastides"
                    OR collection_tesim:"Persuasive Maps: PJ Mode Collection"
                    OR collection_tesim:"Ragamala Paintings"
                    OR collection_tesim:"Alfred Montalvo Bolivian Digital Pamphlets Collection")'}
            end
            end

      configure_blacklight do |config|
          config.view.gallery.partials = [:index_header]
          config.view.masonry.partials = [:index]
          config.view.slideshow.partials = [:index]




    ## Default parameters to send to solr for all search-like requests. See also SearchBuilder#processed_parameters
    config.default_solr_params = {
      :qt => 'search',
      :rows => 10,
      :fl => '*,score',
          }

    # geolocation settings
    config.add_facet_field 'where_ssim', :limit => -2, :label => 'Coordinates', :show => false
    config.view.maps.coordinates_field = "where_geocoordinates"
    config.view.maps.coordinates_facet_field = 'where_ssim'
    config.view.maps.facet_mode = "coordinates"

    # solr field configuration for search results/index views
    config.index.title_field = 'title_tesim'
    config.index.thumbnail_method = :render_thumbnail
    config.index.display_type_field = 'project_id_ssi'

    # solr field configuration for document/show views
    config.show.title_field = 'title_tesim'
    config.show.display_type_field = 'project_id_ssi'

    # solr fields that will be treated as facets by the blacklight application
    config.add_facet_field 'collection_tesim', :label => 'Collection', :sort => 'index', :limit => true
    config.add_facet_field 'date_tesim', :label => 'Date', :limit => 5
    config.add_facet_field 'latest_date_isi', :label => 'Date Range', :range => true
    config.add_facet_field 'creator_facet_tesim', :label => 'Creator', :sort => 'count', :limit => 5
    config.add_facet_field 'type_tesim', :label => 'Work Type', :sort => 'count', :limit => 5
    config.add_facet_field 'culture_tesim', :label => 'Culture', :sort => 'count', :show => false
    config.add_facet_field 'location_facet_tesim', :label => 'Location', :sort => 'count', :limit => 5
    config.add_facet_field 'lang_tesim', :label => 'Language', :sort => 'count', :limit => 5
    config.add_facet_field 'subject_tesim', :label => 'Subject', :limit => 5
    config.add_facet_field 'mat_tech_tesim', :label => 'Materials', :show => false
    config.add_facet_field 'deity_tesim', :label => 'Central Deity', :limit => 5, show: false
    config.add_facet_field 'founder_tesim', :label => 'Village Founder', :limit => 5, show:false
    config.add_facet_field 'fd_27325_tsi', :label => 'Year of photo', :limit => 5, show: false
    config.add_facet_field 'senechal_tesim', :label => 'Senechal', :limit => 5, show:false
    config.add_facet_field 'village_tesim', :label => 'Village', :limit => 5, show: false
    config.add_facet_field 'keywords_tesim', :label => 'Keywords', :limit => 5, show: false
    config.add_facet_field 'repository_tesim', :label => 'Repository', :limit => 5
    config.add_facet_field 'archival_collection_tesim', :label => 'Archival Collection', :limit => 5
    config.add_facet_field 'format_tesim', :label => 'Format', :limit => 5
    config.add_facet_field 'creation_site_location_tesim', :label => 'Creation Site', show: false
    config.add_facet_field 'set_title_tesim', :label => 'Set', :show => false
    config.add_facet_field 'creator_tesim', :label => 'Creator', :show => false
    config.add_facet_field 'country_location_tesim', :label => 'Country', :show => false

    # Have BL send all facet field names to Solr
    config.add_facet_fields_to_solr_request!

    # solr fields to be displayed in the index (search results) view
    config.add_index_field 'village_tesim', :label => 'Village'
    config.add_index_field 'founder_tesim', :label => 'Founder'
    config.add_index_field 'market_square_details_tesim', :label => 'Market Square Details'
    config.add_index_field 'deity_tesim', :label => 'Central Deity', :link_to_search => true
    config.add_index_field 'author_tesim', :label => 'Author', :link_to_search => true
    config.add_index_field 'creator_tesim', :label => 'Creator', :link_to_search => true
    config.add_index_field 'principle_performer_creator_tesim', :label => 'Principal Performer', :link_to_search => true
    config.add_index_field 'collection_tesim', :label => 'Collection', :link_to_search => true
    config.add_index_field 'media_URL_tesim', helper_method: 'image_download', :label => 'Download'
    # these index fields are from the dlxs collections
    #config.add_index_field 'book_id_ts', :label => 'book id'
    
    config.add_index_field 'publisher_tesim', :label => 'Publisher'
    config.add_index_field 'pubplace_tesim', :label => 'Print Publication Place'
    config.add_index_field 'pubdate_tesim', :label => 'Print Publication Date'

    config.add_index_field 'image_ocr_tesim',:label => 'text'
    config.add_index_field 'book_title', :label => 'Book Title'
    config.add_index_field 'date_tesim', :label => 'Date'


    # solr fields to be displayed in the show (single result) view

    #core fields
    config.add_show_field 'collection_tesim', :label => 'Collection', :link_to_search => true
    config.add_show_field 'creator_tesim', :label => 'Creator(s)', :link_to_search => true
    config.add_show_field 'author_tesim', :label => 'Author', :link_to_search => true
    config.add_show_field 'date_tesim', :label => 'Date', :link_to_search => true
    config.add_show_field 'ensemble_tesim', :label => 'Ensemble Notes'
    config.add_show_field 'principle_performer_creator_tesim', :label => 'Principal Performer', :link_to_search => true
    config.add_show_field 'performer_matrix_tesim', :label => 'Performers'
    config.add_show_field 'description_tesim', :label => 'Description'
    config.add_show_field 'occasion_tesim', :label => 'Occasion'
    config.add_show_field 'track_tesim', :label => 'Track'
    config.add_show_field 'culture_tesim', :label => 'Culture', :link_to_search => true
    config.add_show_field 'subject_tesim', :label => 'Subject', :link_to_search => true
    config.add_show_field 'location_tesim', :label => 'Location', :link_to_search => true
    config.add_show_field 'creation_site_location_tesim', :label => 'Creation Site', :link_to_search => true
    config.add_show_field 'country_location_tesim', :label => 'Country', :link_to_search => true

    #collection fields
    #- ragamala
    config.add_show_field 'deity_tesim', :label => 'Central Deity', :link_to_search => true
    config.add_show_field 'set_title_tesim', :label => 'Set', :link_to_search => true
    config.add_show_field 'system_tesim', :label => 'System', :link_to_search => true
    config.add_show_field 'notes_tesim', :label => 'Notes'
    config.add_show_field 'inscription_tesim', :label => 'Inscription'

    #- reps
    config.add_show_field 'fd_27325_tsi', :label => 'Date taken', :link_to_search => true
    config.add_show_field 'founder_tesim', :label => 'Founder', :link_to_search => true
    config.add_show_field 'village_tesim', :label => 'Village', :link_to_search => true
    config.add_show_field 'senechal_tesim', :label => 'Senechal', :link_to_search => true

    #- aerial
    config.add_show_field 'where_ssim', :label => 'Coordinates', :link_to_search => true
    config.add_show_field 'repository_tesim', :label => 'Repository', :link_to_search => true

    #- indonesian music
    config.add_show_field 'full_text_date_tesim', :label => 'Date'
    config.add_show_field 'collector_tesim', :label => 'Collector'
    config.add_show_field 'kaltura_id_s', :label => 'Kaltura'

    #- huntington
    config.add_show_field 'publisher_tesim', :label => 'Publisher'
    config.add_show_field 'pubplace_tesim', :label => 'Print Publication Place'
    config.add_show_field 'pubdate_tesim', :label => 'Print Publication Date'
    config.add_show_field 'keywords_tesim', :label => 'Keywords', :link_to_search => true

    #- persuasive maps
    config.add_show_field 'pj_full_title_tesim', :label => 'Full Title'
    config.add_show_field 'other_creator_tesim', :label => 'Other Creator(s)'
    config.add_show_field 'extent_tesim', :label => 'Measurements'
    config.add_show_field 'id_number_tesim', :label => 'ID Number'
    config.add_show_field 'reference_tesim', :label => 'References'
    config.add_show_field 'collectors_notes_tesim', :label => 'Collector\'s Notes'

    #boilerplate fields, commented out ones don't have needed helpers yet
    config.add_show_field 'mat_tech_tesim', :label => 'Materials/Techniques', :link_to_search => true
    config.add_show_field 'work_type_tesim', :label => 'Work Type', :link_to_search => true
    config.add_show_field 'id_number_ssi', :label => 'Identifier'
    config.add_show_field 'source_tesim', :label => 'Source'
    config.add_show_field 'rights_tesim', :label => 'Rights'

    # "fielded" search configuration. Used by pulldown among other places.


    config.add_search_field 'all_fields', :label => 'All Fields'
    config.add_search_field('title') do |field|
      field.solr_local_parameters = {
        :qf => '$title_qf',
        :pf => '$title_pf'
      }
    end

    config.add_search_field('author') do |field|
      field.solr_local_parameters = {
        :qf => '$author_qf',
        :pf => '$author_pf'
      }
    end

    # "sort results by" select (pulldown)
    config.add_sort_field 'score desc, latest_date_isi desc', :label => 'relevance'
    config.add_sort_field 'latest_date_isi desc, title_tesi asc', :label => 'year (descending)'
    config.add_sort_field 'latest_date_isi asc, title_tesi asc', :label => 'year (ascending)'

    # If there are more than this many search results, no spelling ("did you
    # mean") suggestion is offered.
    config.spell_max = 5
  end


end
