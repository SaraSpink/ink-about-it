class PagesController < ApplicationController
  # before_action :authorize, only: [:new, :edit]
  # before_action :authorize_admin, only: [:new, :edit]
  def index
    @comic =Comic.find(params[:comic_id])
    @page = Page.all
  end

#   def show
#     @page =Page.find(params[:id])
#   end
#
  def new
    @comic =Comic.find(params[:comic_id])
    @page = Page.new
  end
#
# #   def create
# #     @page = current_user.pages.create(page_params)
# # binding.pry
# #       if @page.save
# #         flash[:notice] = "Page Successfully Added"
# #         redirect_to pages_path
# #       else
# #         render :new
# #       end
# #     end
#
#   def edit
#     @page = Page.find(params[:id])
#   end
#
#   def update
#     @page = Page.find(params[:id])
#     if @page.update(page_params)
#       redirect_to pages_path
#     else
#       render :edit
#     end
#   end
#
#   def destroy
#     @page = Page.find(params[:id])
#     @page.destroy
#     redirect_to pages_path
#   end

  private

    def page_params
      params.require(:page).permit(:comic_id, :number, :image)
    end

end
