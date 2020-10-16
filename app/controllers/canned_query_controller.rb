class CannedQueryController < ApplicationController

  def initialize
    super
    init_can
  end

  def init_can
    @can = {
      adler: { f: { collection_tesim: ['Adler Hip Hop Archive'] } },
      crazy: { f: { collection_tesim: ['Adler Hip Hop Archive'] }, q: 'crazy legs' },
      rope_work: { q: 'rope work', search_field: 'title', utf8: '✓' }
    }
  end

  def index
  end

  def search_params nickname
    key = nickname.to_sym
    @can[key] unless @can[key].nil?
   end

  def redirect
  search = search_params(params['id'])
  redirect_to search_catalog_path(search)
  end

end
