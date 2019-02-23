class Follower
  attr_accessor :age
  attr_reader :name, :life_motto

  #@all_cults = []
  @@all = []

  def initialize
    @@all << self
    @all_cults = []
  end

  #INSTANCE METHODS BELOW

  def join_cult(cult)
    BloodOath.new(cult, self)
    BloodOath.all.each do |oath|
      if oath.cult == cult
        @all_cults << cult
      end
    end
  end

  def self.all
    @@all
  end

  #CLASS METHODS BELOW

  def cults
    @all_cults
  end

  def self.follower_of_a_certain_age(age)
    @@all.select do |follower|
      follower.age >= age
    end
  end

end
