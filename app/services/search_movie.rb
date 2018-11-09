
class SearchMovie
  attr_accessor :post, :result

  def initialize(k)
    @post = k
    @result = []
    Tmdb::Api.Rails.application.credentials.dig(:key_name)

  end

  def perform
    @result = Tmdb::Search.movie(@post)
  end
end