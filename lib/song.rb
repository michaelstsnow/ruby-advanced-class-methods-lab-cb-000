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
  end
  def new_by_name
  end
  def create_by_name
  end

end
