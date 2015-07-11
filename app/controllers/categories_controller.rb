class CategoriesController < ApplicationController
	before_action :set_category, :except => [:index,:create, :new]

	def new
		@category = Category.new
	end

	def edit
	end

	def index
		@categories = Category.all
	end 

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to categories_path
		else
			render :new
		end
	end

	def update
		if @category.update(category_params)

			redirect_to categories_path
		else
			render :edit
		end
	end

	def show
		@products = @category.products
	end

	def destroy
		@category.destroy
		redirect_to categories_path
	end

	private

	def set_category
		@category = Category.find(params[:id])
	end

	def category_params
		params.require(:category).permit!
	end

end

