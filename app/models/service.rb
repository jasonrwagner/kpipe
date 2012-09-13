class Service < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :price, :outcome, :solution_associate
end

#class Businesssolution < ActiveRecord::Base
#	before_filter :set_current_service
#	def set_current_service
#		Service.current = @set_current_service
#	end
#end
