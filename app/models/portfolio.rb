class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.No9
		where(subtitle: "Subtitle No 9")
	end

	scope :No1, -> { where(subtitle: "Subtitle No 1") }
end
