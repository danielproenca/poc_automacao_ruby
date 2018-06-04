# Serializers
class MovieSerializer
  def initialize(movie)
    @movie = movie
  end

  def as_json(*)
    data = {
      id: @movie.id.to_s,
      title: @movie.title,
      overview: @movie.overview,
      year: @movie.year,
      cast: @movie.cast
    }
    data[:errors] = @movie.errors if @movie.errors.any?
    data
  end
end
