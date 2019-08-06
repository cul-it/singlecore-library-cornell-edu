class SearchBuilder < Blacklight::SearchBuilder
  include Blacklight::Solr::SearchBuilderBehavior
  include BlacklightMaps::MapsSearchBuilderBehavior

  include BlacklightRangeLimit::RangeLimitBuilder

  self.default_processor_chain += [:full_text_search]
    
  def full_text_search user_parameters
   
  end

end
