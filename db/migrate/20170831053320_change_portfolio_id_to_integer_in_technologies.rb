class ChangePortfolioIdToIntegerInTechnologies < ActiveRecord::Migration[5.1]
  def change
  	change_column :technologies, :portfolio_id, :integer, foreign_key: true, index: true
  end
end
