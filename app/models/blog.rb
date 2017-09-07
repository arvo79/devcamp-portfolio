class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic, optional: true

  def self.first_five
  	where("id < ?", "6")
  end

  def self.limit_to_three
  	limit(3)
  end
end
