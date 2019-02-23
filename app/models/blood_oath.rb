class BloodOath
  attr_reader :cult, :follower

  @@all_oaths = []

  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @date = Time.now.to_s[0..9]
    @@all_oaths << self
  end

  def initiation_date
    @date
  end

  def self.all
    @@all_oaths.uniq
  end

end
