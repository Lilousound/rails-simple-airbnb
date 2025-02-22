class FlatsController < ApplicationController
  before_action :set_flat, only: [ :show, :edit, :update, :destroy ]

  def index
    @flats = Flat.all
  end

  def show
    @flats = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flat_path(@flat)
  end

  def edit
    set_flat()
  end

  def update
    set_flat()
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    set_flat()
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

def flat_params
  params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :image_url)
end

def set_flat
  @flat = Flat.find(params[:id])
end
end
