class Portfolio < ApplicationRecord
	has_many :technologies, dependent: :destroy

	accepts_nested_attributes_for :technologies,
																allow_destroy: true,
																reject_if: lambda { |attrs| attrs['name'].blank? }

	validates_presence_of :title, :body

	mount_uploader :main_image, PortfolioUploader
	mount_uploader :thumb_image, PortfolioUploader

	def self.No9
		where(subtitle: "Subtitle No 9")
	end

	scope :No1, -> { where(subtitle: "Subtitle No 1") }

	def self.by_position
		order("position ASC")
	end
end