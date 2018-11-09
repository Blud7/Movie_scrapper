
class SearchMovie
  attr_accessor :post, :result

  def initialize(k)
    @post = k
    @result = []
    Tmdb::Api.Rails.application.credentials.dig(:key_name)
    # si ça ne marche pas, décommenter la ligne du dessous et la remplacer à celle au-dessus avec sa clé d'API à la place de "key_name" :
    # Tmdb::Api.key('key_name')

  end

  def perform
    @result = Tmdb::Search.movie(@post)
  end
end