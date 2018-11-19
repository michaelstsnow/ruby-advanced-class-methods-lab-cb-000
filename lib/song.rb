class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def create
    new_song=self.new
    new_song.save
    new_song
  end

  def new_by_name(name)
    new_song.create
    new_song.name=name
    new_song
  end

  def create_by_name(name)
    new_song.new_by_name(name)
    new_song.save
  end

  def find_by_name
  end
  def find_or_create_by_name
  end
  def alphabetical
  end
  def new_from_filename
  end
  def create_from_filename
  end
  def destroy_all
  end

end
