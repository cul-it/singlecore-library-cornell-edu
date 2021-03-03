class CollectionsController < ApplicationController
  include CollectionsHelper

  def index
    nicknames = get_collection_nicknames()
  end
end
