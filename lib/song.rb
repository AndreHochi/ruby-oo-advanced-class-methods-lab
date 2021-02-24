class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
      temp = self.new
      temp.save
      temp
  end

  def save
    self.class.all << self
  end

  def self.new_by_name(name)
    temp = self.new
    temp.name = name
    temp
  end

  def self.create_by_name(name)
    temp = self.new
    temp.name = name
    temp.save
    temp
  end

  def self.find_by_name(name)
    @@all.find do |song|
      song.name == name
    end
    
  end

  def self.find_or_create_by_name(name)
    temp = self.find_by_name(name)
    if temp == nil
      temp = self.create_by_name(name)
    end
    temp
  end

end
