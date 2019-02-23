class Cult
  attr_accessor :location
  attr_reader :name, :founding_year, :slogan

  @@all_cults = []

  def initialize(name)
    @name = name
    @location = location
    @founding_year = Time.now.to_s[0..9].to_i
    @slogan = slogan
    @@all_cults << self
    @followers = []

  end

  def recruit_follower(follower)
    BloodOath.new(self, follower)

     BloodOath.all.each do |oath|
      if oath.follower == follower
        @followers << follower
      end
    end
  end


  def cult_population
    @followers.count
  end

  def self.all
    @@all_cults
  end

  def self.find_by_name(name)
    @@all_cults.find do |cult|
      if cult.name == name
        cult.name
      end
    end
  end

  def self.find_by_location(location)
    @@all_cults.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    @@all_cults.select do |cult|
      cult.founding_year == year
    end
  end
end
