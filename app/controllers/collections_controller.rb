class CollectionsController < ApplicationController
  include CollectionsHelper

  def index
    nicknames = get_collection_nicknames()
    @examples = []
    nicknames.each { |n| @examples << get_collection_example(n) }
  end
end
