class BookmarksController < ApplicationController
  def index
  @bookmark = Bookmark.all
  end

  def show
  @bookmark = Bookmark.find(params[:id])
  end

  def new
  @bookmark = Bookmark.new
  end

  def create
  @bookmark = Bookmark.new(bookmark_params)
  @list = List.find(params[:id])
  @bookmark.list = @list
  if @bookmark.save
    redirect_to list_path(@list)
  else
    render :new, status: :unprocessable_entity
  end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
