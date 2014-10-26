class GuitarsController < ApplicationController

  def new
    @guitar = Guitar.new
  end

  def create
    Guitar.create(guitar_params)
    redirect_to root_path
  end

  private

  def guitar_params
    params.require(:guitar).permit(:name, :description)
  end

end
