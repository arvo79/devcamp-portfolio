class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def show
		@portfolio_item = Portfolio.find(params[:id])
	end

	def new
		@portfolio_item = Portfolio.new
	end

	def create
		@portfolio_item = Portfolio.new(portfolio_params)
		
		respond_to do |format|
			if @portfolio_item.save
				format.html { redirect_to @portfolio_item, notice: "Your Portfolio Item has been created." }
			else
				format.html { render :new }
			end
		end
	end

	private

	def portfolio_params
		params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
	end
end
