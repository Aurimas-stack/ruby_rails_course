class CategoriesController < ApplicationController
    before_action :require_admin, except: [:index, :show]

    def new 
        @category = Category.new
    end

    def index 
        # @categories = Category.all
        @categories = Category.paginate(page: params[:page], per_page: 5)
    end

    def show 
        @category = Category.find(params[:id])
        @articles = @category.articles.paginate(page: params[:page], per_page: 5)
    end

    def edit 
        @category = Category.find(params[:id])
    end

    def update 
        @category = Category.find(params[:id])
        if @category.update(category_params)
            flash[:notice] = "Updated category name"
            redirect_to @category
        else 
            render "edit"
        end

    def create
        @category = Category.new(category_params)
        if @category.save
            flash[:notice] = "category was created"
            redirect_to @category
        else  
            render "new"
        end
    end

    private

        def category_params 
            params.require(:category).permit(:name)
        end

        def require_admin
           if !(logged_in? && current_user.admin?)
            flash[:alert] = "Only admins allowed to do that"
            redirect_to categories_path 
           end
        end
end