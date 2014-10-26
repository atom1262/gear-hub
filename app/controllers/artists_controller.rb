class ArtistsController < ApplicationController

  def index
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(artist_params)
    redirect_to artist
  end

  private

  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :bio, :image, :band)
  end

end
