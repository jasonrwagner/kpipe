class Store < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :services
  has_many :businesssolutions


  #def self.random num = 1
  	#num.times.map { offset(rand(count)).limit(1) }
  #end
end
