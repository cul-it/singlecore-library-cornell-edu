class CollectionsController < ApplicationController
  include CollectionsHelper
  Collection = Struct.new(:nickname, :title, :image, :landing, :search)

  def index
    nicknames = get_collection_nicknames()
    @collections = []
    nicknames.each { |n|
      item = get_collection_example(n)
      @collections << Collection.new(
        n,
        item["collection_tesim"][0],
        item['media_URL_size_0_tesim'].present? ? item['media_URL_size_0_tesim'][0] : get_image(n),
        item['collection_website_ssi'].present? ? item['collection_website_ssi'] : get_landing_page(n),
        "/cq/#{n}"
      )
    }
    @collections = @collections.sort_by { |collection| [collection.title] }
  end

end

