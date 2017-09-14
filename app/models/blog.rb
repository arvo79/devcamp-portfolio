class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body, :topic_id

  belongs_to :topic

  has_many :comments, dependent: :destroy

  scope :most_recent, -> { order('updated_at DESC') }

  scope :only_published, -> { where(status: "published") }

 	def self.by_topic(param)
 		if param.to_i > 0
      where(:topic_id => param)
		else
      all
		end
	end
end
