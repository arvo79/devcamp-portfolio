class Portfolio < ApplicationRecord
	has_many :technologies, dependent: :destroy

	accepts_nested_attributes_for :technologies,
																reject_if: lambda { |attrs| attrs['name'].blank? }

	include Placeholder
	validates_presence_of :title, :body, :main_image, :thumb_image
	
	def self.No9
		where(subtitle: "Subtitle No 9")
	end

	scope :No1, -> { where(subtitle: "Subtitle No 1") }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(width: '300', height: '200') # ||= only asign if main_image has a nil value
		self.thumb_image ||= Placeholder.image_generator(width: '75', height: '50')
	end

	def self.by_position
		order("position ASC")
	end
end
