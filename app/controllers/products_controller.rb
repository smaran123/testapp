class ProductsController < ApplicationController

def create
	@category = Category.find(params[:category_id])
	@product = @category.products.create(product_params)
	 @product.save
		respond_to do |format|
			format.js
	end
end	

def show
	@category = Category.find(params[:category_id])
	@product = @category.products.find(params[:id])
		respond_to do |format|
				format.js
	end
end

def edit
	@category = Category.find(params[:category_id])
	@products = @category.products
	@product = @category.products.find(params[:id])
	respond_to do |format|
		format.html
				format.js
	end
end

def update
	@category = Category.find(params[:category_id])
	
	@product = @category.products.find(params[:id])
	@product.update(product_params)
	respond_to do |format|
		
			format.js
	end
end

def destroy
	@category = Category.find(params[:category_id])
	@product = @category.products.find(params[:id])
	@product.destroy

end

private

def product_params
	params.require(:product).permit!
end

end


