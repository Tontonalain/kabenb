class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]
  def index
    @flats = Flat.all
  end

  def show
    @flats = Flat.all
    @markers = @flats.geocoded.map do |flat|
        {
            lat: flat.latitude,
            lng: flat.longitude,
            info_window: render_to_string(partial: "info_window", locals: {flat: flat})
        }
    end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

end
