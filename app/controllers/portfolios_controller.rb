class PortfoliosController < ApplicationController
	
	before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

	def index
		@portfolio_items = Portfolio.all
	end

	def show
	end

	def new
		@portfolio_item = Portfolio.new
	end

	def edit
	end

	def create
		@portfolio_item = Portfolio.new(portfolio_params)
		
		respond_to do |format|
			if @portfolio_item.save
				format.html { redirect_to portfolio_show_path(@portfolio_item), notice: "Your Portfolio Item has been created." }
			else
				format.html { render :new }
			end
		end
	end

	def update
		respond_to do |format|
			if @portfolio_item.update(portfolio_params)
				format.html { redirect_to portfolio_show_path(@portfolio_item), notice: "Your Portfolio Item has been updated." }
			else
				format.html { render :edit }
			end
		end
	end

	def destroy
		@portfolio_item.destroy
		respond_to do |format|
			format.html { redirect_to portfolios_path, notice: "Your Portfolio Item has been deleted." }
			format.json { head :no_content }
		end
	end

	private

	def set_portfolio
		@portfolio_item = Portfolio.find(params[:id])
	end
	def portfolio_params
		params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
	end
end
