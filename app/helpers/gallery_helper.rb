module GalleryHelper
    
    def show_photos(keyword)
        search_results = Unsplash::Photo.search(keyword)
    end

end
