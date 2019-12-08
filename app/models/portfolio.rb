class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	#For DB queries
	#Class Method
	def self.angular
		where(subtitle: 'Angular')
	end
	#Scope Method
	scope :ruby_on_rails_portfolio_utems, -> {where(subtitle: 'Ruby on Rails')}
end
