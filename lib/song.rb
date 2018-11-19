class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new_song=self.new
    new_song.save
    new_song
  end

  def self.new_by_name(name)
    new_song=self.new
    new_song.name=(name)
    new_song.save
    new_song
  end

  def self.create_by_name(name)
    new_song=self.new
    new_song.name=(name)
    new_song.save
    new_song
  end

  def self.find_by_name(name)
    named_song=self.all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    self.all.sort_by { |song| song.name}
  end

  def self.new_from_filename(filename)
    song_info=filename.split(" - ")
    song_name=song_info[1]
    song_artist=[0]
    self.class.create_by_name(song_name)
  end

  def create_from_filename
  end

  def destroy_all
  end

end
