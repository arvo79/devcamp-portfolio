class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.No9
		where(subtitle: "Subtitle No 9")
	end

	scope :No1, -> { where(subtitle: "Subtitle No 1") }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "http://placehold.it/350x200" # ||= only asign if main_image has a nil value
		self.thumb_image ||= "http://placehold.it/100x50"
	end
end
