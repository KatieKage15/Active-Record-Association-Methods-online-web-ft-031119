class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genres.collect do |t|
      t.name
    end
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    self.artist = Artist.find_or_create_by(name: "Drake")
  end
end
