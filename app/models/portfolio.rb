class Portfolio < ApplicationRecord
	#Parent/Child relationship with Technology table
	has_many :technologies
	accepts_nested_attributes_for :technologies, 
								 reject_if: lambda{|attrs| attrs['name'].blank?}

	#MODEL/CONCERN
	include Placeholder
	#Controller Create#action Requirements
	validates_presence_of :title, :body, :main_image, :thumb_image

	#For DB queries
	#Class Method
	def self.angular
		where(subtitle: 'Angular')
	end
	#Scope Method
	scope :ruby_on_rails_portfolio_utems, -> {where(subtitle: 'Ruby on Rails')}

	#Default Image setting >> Method in Model/concern
	after_initialize :set_defaults
	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400') #"http://plcehold.it/600x400"
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200') #"http://plcehold.it/350x200"
	end
end
