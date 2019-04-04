
genre --< song >-- artist

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
end

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs
end


class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs
end
create, update, and show
index ,new , show
