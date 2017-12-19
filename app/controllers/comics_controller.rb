class ComicsController < ApplicationController
  before_action :authorize, only: [:new, :edit]
  # before_action :authorize_admin, only: [:new, :edit]
  def index
    @comic = Comic.all
  end

  def show
    @comic =Comic.find(params[:id])
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = current_user.comics.create(comic_params)

      if @comic.save
        flash[:notice] = "Comic Successfully Added"
        redirect_to comics_path
      else
        render :new
      end
    end
  #
  # def edit
  #   @comic = Comic.find(params[:id])
  # end
  #
  # def update
  #   @comic = Comic.find(params[:id])
  #   if @comic.update(comic_params)
  #     redirect_to comics_path
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @comic = Comic.find(params[:id])
  #   @comic.destroy
  #   redirect_to comics_path
  # end
  #
  private

    def comic_params
      params.require(:comic).permit(:user_id, :title, :description, :cover)
    end

end
