require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ted = Follower.new
frank = Follower.new
janet = Follower.new
jenny = Follower.new

jenny.age = 10
janet.age = 40
frank.age = 20
ted.age = 27

scientology = Cult.new("Scientology")
waco = Cult.new("Waco")
waco.location = "USA"
branch_davidians = Cult.new("Branch Davidiians")
mormonism = Cult.new("Mormonism")

ted.join_cult(scientology)
frank.join_cult(branch_davidians)
scientology.recruit_follower(janet)
scientology.recruit_follower(jenny)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
