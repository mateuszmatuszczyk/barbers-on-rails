class GalleryController < ApplicationController
  def index
    @search_results = helpers.show_photos("barber")
  end
end
