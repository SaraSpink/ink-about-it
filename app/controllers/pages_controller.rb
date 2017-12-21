class PagesController < ApplicationController
  # before_action :authorize, only: [:new, :edit]
  # before_action :authorize_admin, only: [:new, :edit]
  def index
    @comic =Comic.find(params[:comic_id])
    @page = Page.all
  end

  def show
    @page =Page.find(params[:id])
  end

  def new
    @comic =Comic.find(params[:comic_id])

    @page = @comic.pages.new
  end

  def create
    @comic = Comic.find(params[:comic_id])
    @page = @comic.pages.new(page_params)
    if @page.save
      redirect_to comic_pages_path(@page.comic)
    else
      render :new
    end
  end

  private

    def page_params
      params.require(:page).permit(:comic_id, :number, :image)
    end

end
