# -*- encoding : utf-8 -*-

class CatalogController < ApplicationController


  include Blacklight::Catalog

before_action  do




end



  configure_blacklight do |config|
          config.view.gallery.partials = [:index_header, :index]
          config.view.masonry.partials = [:index]
          config.view.slideshow.partials = [:index]


          config.view.gallery.partials = [:index_header, :index]
          config.view.masonry.partials = [:index]
          config.view.slideshow.partials = [:index]



    ## Default parameters to send to solr for all search-like requests. See also SearchBuilder#processed_parameters
    config.default_solr_params = {
      :qt => 'search',
      :rows => 10,
      :fq => '-notes_tesim:"Not for publication" AND -active_fedora_model_ssi:"Page"'
          }


    # solr path which will be added to solr base url before the other solr params.
    #config.solr_path = 'select'

    # items to show per page, each number in the array represent another option to choose from.
    #config.per_page = [10,20,50,100]

    ## Default parameters to send on single-document requests to Solr. These settings are the Blackligt defaults (see SearchHelper#solr_doc_params) or
    ## parameters included in the Blacklight-jetty document requestHandler.
    #


    # geolocation settings

    config.add_facet_field 'where_ssim', :limit => -2, :label => 'Coordinates', :show => false
    config.show.partials << :show_maplet
    config.view.maps.coordinates_field = "where_geocoordinates"
    config.view.maps.coordinates_facet_field = 'where_ssim'
    config.view.maps.facet_mode = "coordinates" # or "coordinates"    config.view.maps.search_mode = "coordinates"



    # solr field configuration for search results/index views
    config.index.title_field = 'title_tesim'
    config.index.thumbnail_field = 'media_URL_size_2_tesim'




    config.index.display_type_field = 'project_id_ssi'

    # solr field configuration for document/show views
    config.show.title_field = 'title_tesim'
    config.show.display_type_field = 'project_id_ssi'

    # solr fields that will be treated as facets by the blacklight application
    #   The ordering of the field names is the order of the display
    #
    # Setting a limit will trigger Blacklight's 'more' facet values link.
    # * If left unset, then all facet values returned by solr will be displayed.
    # * If set to an integer, then "f.somefield.facet.limit" will be added to
    # solr request, with actual solr request being +1 your configured limit --
    # you configure the number of items you actually want _displayed_ in a page.
    # * If set to 'true', then no additional parameters will be sent to solr,
    # but any 'sniffed' request limit parameters will be used for paging, with
    # paging at requested limit -1. Can sniff from facet.limit or
    # f.specific_field.facet.limit solr request params. This 'true' config
    # can be used if you set limits in :default_solr_params, or as defaults
    # on the solr side in the request handler itself. Request handler defaults
    # sniffing requires solr requests to be made with "echoParams=all", for
    # app code to actually have it echo'd back to see it.
    #
    # :show may be set to false if you don't want the facet to be drawn in the
    # facet bar
    #config.add_facet_field 'Village_s', :label => 'Village', :limit => true
    #config.add_facet_field 'Date_i', :label => 'Year photographed', :sort => 'count', :limit => true
    #config.add_facet_field 'Founder_s', :label => 'Founder', :sort => 'count', :limit => true
    config.add_facet_field 'collection_tesim', :label => 'Collection', :sort => 'index', :limit => true

    config.add_facet_field 'creator_tesim', :label => 'Creator', :sort => 'count', :limit => 5
    config.add_facet_field 'type_tesim', :label => 'Work Type', :sort => 'count', :limit => 5
    config.add_facet_field 'culture_tesim', :label => 'Culture', :sort => 'count', :limit => 5
    config.add_facet_field 'location_facet_tesim', :label => 'Location', :sort => 'count', :limit => 5
    config.add_facet_field 'lang_tesim', :label => 'Language', :sort => 'count', :limit => 5
    config.add_facet_field 'subject_tesim', :label => 'Subject', :limit => 5
    config.add_facet_field 'mat_tech_tesim', :label => 'Materials', :limit => 5
    config.add_facet_field 'deity_tesim', :label => 'Central Deity', :limit => 5, show: false
    config.add_facet_field 'founder_tesim', :label => 'Village Founder', :limit => 5, show:false
    config.add_facet_field 'fd_27325_tsi', :label => 'Year of photo', :limit => 5, show: false
    config.add_facet_field 'senechal_tesim', :label => 'Senechal', :limit => 5, show:false
    config.add_facet_field 'village_tesim', :label => 'Village', :limit => 5, show: false
    config.add_facet_field 'keywords_tesim', :label => 'Keywords', :limit => 5, show: false
    config.add_facet_field 'format_tesim', :label => 'Format', :limit => 5


    #config.add_facet_field 'county_tesim', :label => 'County', :limit => 20
    #config.add_facet_field 'country_tesim', :label => 'Country', :limit => 20


    #config.add_facet_field 'language_facet', :label => 'Language', :limit => true
    #config.add_facet_field 'lc_1letter_facet', :label => 'Call Number'
    #config.add_facet_field 'subject_geo_facet', :label => 'Region'
    #config.add_facet_field 'subject_era_facet', :label => 'Era'

    #config.add_facet_field 'example_pivot_field', :label => 'Pivot Field', :pivot => ['format', 'language_facet']

    #config.add_facet_field 'example_query_facet_field', :label => 'Publish Date', :query => {
     #  :years_5 => { :label => 'within 5 Years', :fq => "pub_date:[#{Time.now.year - 5 } TO *]" },
      # :years_10 => { :label => 'within 10 Years', :fq => "pub_date:[#{Time.now.year - 10 } TO *]" },
       #:years_25 => { :label => 'within 25 Years', :fq => "pub_date:[#{Time.now.year - 25 } TO *]" }
    #}


    # Have BL send all facet field names to Solr, which has been the default
    # previously. Simply remove these lines if you'd rather use Solr request
    # handler defaults, or have no facets.
    config.add_facet_fields_to_solr_request!

    # solr fields to be displayed in the index (search results) view
    #   The ordering of the field names is the order of the display
    config.add_index_field 'village_tesim', :label => 'Village'
    config.add_index_field 'founder_tesim', :label => 'Founder'
    config.add_index_field 'market_square_details_tesim', :label => 'Market Square Details'
    config.add_index_field 'deity_tesim', :label => 'Central Deity', :link_to_search => true
    config.add_index_field 'book_author', :label => 'Book Author:'
    config.add_index_field 'author_tesim', :label => 'Author:', :link_to_search => true
    config.add_index_field 'collection_tesim', :label => 'Collection', :link_to_search => true

    # these index fields are from the dlxs collections
    config.add_index_field 'book_id_ts', :label => 'book id:'
    config.add_index_field 'publisher_tesim', :label => 'Publisher:'
    config.add_index_field 'book_publisher', :label => 'Book Publisher:'
    config.add_index_field 'pubdate_tesim', :label => 'Published:'
    config.add_index_field 'image_ocr_tesim',:label => 'text'
    config.add_index_field 'book_title', :label => 'Book Title:'


    #config.add_index_field 'language_facet', :label => 'Language'
    #config.add_index_field 'published_display', :label => 'Published'
    #config.add_index_field 'published_vern_display', :label => 'Published'
    #config.add_index_field 'lc_callnum_display', :label => 'Call number'

    # solr fields to be displayed in the show (single result) view
    #   The ordering of the field names is the order of the display


    #core fields
    config.add_show_field 'collection_tesim', :label => 'Collection', :link_to_search => true
    config.add_show_field 'creator_tesim', :label => 'Creator(s)', :link_to_search => true
    config.add_show_field 'author_tesim', :label => 'Author', :link_to_search => true
    config.add_show_field 'description_tesim', :label => 'Description',:link_to_search => true
    config.add_show_field 'culture_tesim', :label => 'Culture', :link_to_search => true
    config.add_show_field 'subject_tesim', :label => 'Subject', :link_to_search => true
    config.add_show_field 'location_tesim', :label => 'Location', :link_to_search => true
    config.add_show_field 'creation_site_location_tesim', :label => 'Creation Site', :link_to_search => true
    config.add_show_field 'country_location_tesim', :label => 'Country', :link_to_search => true

    #collection fields
    #- ragamala
    config.add_show_field 'deity_tesim', :label => 'Central Deity', :link_to_search => true
    config.add_show_field 'inscription_tesim', :label => 'Inscription'

    #- reps
    config.add_show_field 'fd_27325_tsi', :label => 'Date taken', :link_to_search => true
    config.add_show_field 'founder_tesim', :label => 'Founder', :link_to_search => true
    config.add_show_field 'village_tesim', :label => 'Village', :link_to_search => true
    config.add_show_field 'senechal_tesim', :label => 'Senechal', :link_to_search => true

    #- aerial
    config.add_show_field 'where_ssim', :label => 'Coordinates', :link_to_search => true
    config.add_show_field 'repository_tesim', :label => 'Repository'

    #- indonesian music
    config.add_show_field 'kaltura_id_s', :label => 'Kaltura'

    #- huntington
    config.add_show_field 'pubplace_tesim', :label => 'Print Publication Place'
    config.add_show_field 'publisher_tesim', :label => 'Print Publisher'
    config.add_show_field 'pubdate_tesim', :label => 'Print Publication Date'
    config.add_show_field 'pubstmt_pubplace_tesim', :label => 'Publication Information'
    config.add_show_field 'pubstmt_publisher_tesim', :label => 'Publisher'
    config.add_show_field 'keywords_tesim', :label => 'Keywords', :link_to_search => true




    #boilerplate fields, commented out ones don't have needed helpers yet
    config.add_show_field 'mat_tech_tesim', :label => 'Materials/Techniques', :link_to_search => true
    config.add_show_field 'work_type_tesim', :label => 'Work Type', :link_to_search => true
    config.add_show_field 'id_number_ssi', :label => 'Identifier'
    config.add_show_field 'source_tesim', :label => 'Source'
    config.add_show_field 'rights_tesim', :label => 'Rights'

    #config.add_show_field 'media_URL_tesim', :label => 'Download original image'
    #config.add_show_field 'ssc_site_tesim', :label => 'View in SharedShelf Commons'
    # config.add_show_field 'collection_website_ss', :label => 'Collection Web Site'




    #config.add_show_field 'title_vern_display', :label => 'Title'
    #config.add_show_field 'subtitle_display', :label => 'Subtitle'
    #config.add_show_field 'subtitle_vern_display', :label => 'Subtitle'
    #config.add_show_field 'author_display', :label => 'Author'
    #config.add_show_field 'author_vern_display', :label => 'Author'
    #config.add_show_field 'format', :label => 'Format'
    #config.add_show_field 'url_fulltext_display', :label => 'URL'
    #config.add_show_field 'url_suppl_display', :label => 'More Information'
    #config.add_show_field 'language_facet', :label => 'Language'
    #config.add_show_field 'published_display', :label => 'Published'
    #config.add_show_field 'published_vern_display', :label => 'Published'
    #config.add_show_field 'lc_callnum_display', :label => 'Call number'
    #config.add_show_field 'isbn_t', :label => 'ISBN'

    # "fielded" search configuration. Used by pulldown among other places.
    # For supported keys in hash, see rdoc for Blacklight::SearchFields
    #
    # Search fields will inherit the :qt solr request handler from
    # config[:default_solr_parameters], OR can specify a different one
    # with a :qt key/value. Below examples inherit, except for subject
    # that specifies the same :qt as default for our own internal
    # testing purposes.
    #
    # The :key is what will be used to identify this BL search field internally,
    # as well as in URLs -- so changing it after deployment may break bookmarked
    # urls.  A display label will be automatically calculated from the :key,
    # or can be specified manually to be different.

    # This one uses all the defaults set by the solr request handler. Which
    # solr request handler? The one set in config[:default_solr_parameters][:qt],
    # since we aren't specifying it otherwise.

    config.add_search_field 'all_fields', :label => 'All Fields'


    # Now we see how to over-ride Solr request handler defaults, in this
    # case for a BL "search field", which is really a dismax aggregate
    # of Solr search fields.

    config.add_search_field('title') do |field|
      # solr_parameters hash are sent to Solr as ordinary url query params.
      #field.solr_parameters = { :'spellcheck.dictionary' => 'title' }

      # :solr_local_parameters will be sent using Solr LocalParams
      # syntax, as eg {! qf=$title_qf }. This is neccesary to use
      # Solr parameter de-referencing like $title_qf.
      # See: http://wiki.apache.org/solr/LocalParams
      field.solr_local_parameters = {
        :qf => '$title_qf',
        :pf => '$title_pf'
      }
    end

    config.add_search_field('author') do |field|
      #field.solr_parameters = { :'spellcheck.dictionary' => 'author' }
      field.solr_local_parameters = {
        :qf => '$author_qf',
        :pf => '$author_pf'
      }
    end

    # Specifying a :qt only to show it's possible, and so our internal automated
    # tests can test it. In this case it's the same as
    # config[:default_solr_parameters][:qt], so isn't actually neccesary.
   # config.add_search_field('subject') do |field|
     # field.solr_parameters = { :'spellcheck.dictionary' => 'subject' }
    #  field.qt = 'search'
    #  field.solr_local_parameters = {
     #   :qf => '$subject_qf',
     #   :pf => '$subject_pf'
    #  }
    #end

    # "sort results by" select (pulldown)
    # label in pulldown is followed by the name of the SOLR field to sort by and
    # whether the sort is ascending or descending (it must be asc or desc
    # except in the relevancy case).


    # If there are more than this many search results, no spelling ("did you
    # mean") suggestion is offered.
    config.spell_max = 5
  end


end
