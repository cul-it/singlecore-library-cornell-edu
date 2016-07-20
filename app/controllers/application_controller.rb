class ApplicationController < ActionController::Base
  # Adds a few additional behaviors into the application controller
  include Blacklight::Controller
  layout 'blacklight'

  helper Openseadragon::OpenseadragonHelper
  # Adds a few additional behaviors into the application controller
  include Blacklight::Controller
  layout 'blacklight'

  def bastides
  base_solr = Blacklight.solr_config[:url].gsub(/\/solr\/.*/,'/solr')
  dbclnt = HTTPClient.new
  @bastidesResponse = dbclnt.get_content("http://jrc88.solr.library.cornell.edu/solr/digitalcollections/select?q=*&fq=collection_tesim%3A%22John+Reps+Collection+-+Bastides%22&rows=0&df=location_facet_tesim&wt=json&indent=true&facet=true&facet.limit=1000&facet.query=*&facet.field=location_facet_tesim&facet.sort=index"  )
    if !@bastidesResponse.nil?
        @bastides = JSON.parse(@bastidesResponse)
        @bastides = @bastides['facet_counts']['facet_fields']['location_facet_tesim']
    end
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
