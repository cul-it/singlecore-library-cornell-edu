class SearchBuilder < Blacklight::SearchBuilder
  include Blacklight::Solr::SearchBuilderBehavior
  include BlacklightMaps::MapsSearchBuilderBehavior

  include BlacklightRangeLimit::RangeLimitBuilder



end
