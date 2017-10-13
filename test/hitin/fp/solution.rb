module Hitin
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array, access_level)
        rating = []
        array.each { |film| rating << film['rating_kinopoisk'].to_f if film['access_level'] == access_level && film['rating_kinopoisk'].to_f.positive? }
        rating.reduce(:+) / rating.length
      end

      def chars_count(films, year)
        chars = []
        films.each { |film| chars << film['name'] if film['year'] == year.to_s }
      end
    end
  end
end
