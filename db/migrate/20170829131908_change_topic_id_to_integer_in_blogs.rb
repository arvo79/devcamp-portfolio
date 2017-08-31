class ChangeTopicIdToIntegerInBlogs < ActiveRecord::Migration[5.1]
  def change
  	change_column :blogs, :topic_id, :integer, foreign_key: true
  end
end
