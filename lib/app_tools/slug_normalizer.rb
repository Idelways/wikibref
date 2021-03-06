# The title of the article in the url is slightly different of the database one, so do some encoding here
module AppTools
  class SlugNormalizer
    def self.decode(slug)
      slug ||= ""
      slug = URI.decode(slug)
      slug.gsub('_', ' ')
    end
  
    def self.encode(title)
      title ||= ""
      title = title.gsub(' ', '_')
      URI.encode(title)
    end
  end
end