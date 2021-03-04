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
        get_example_image(item),
        get_example_landing_page(item),
        "/cq/#{n}"
      )
    }
    @collections = @collections.sort_by { |collection| [collection.title] }
  end

end

