class BookingsController < ApplicationController
  before_action :set_flat, only: [:new, :create]

  def show
  end

  # initialiser le formulaire pour créer un booking par l'appel de l'action new dans le contrôleur qui créé un nouvel
  # enregistrement non sauvegardé de booking et rend le formulaire adapté à la création d'une nouvelle ressource
  def new
    @booking = Booking.new
  end

  # création d'un booking prend l'enregistrement créé par l'action new et le transmet à l'action create du contrôleur,
  # qui le sauvegarde dans la base de données
  def create
    @flat = Flat.find(params[:flat_id])
    # on initialise un nouveau booking avec les paramètres du formulaire
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = current_user # on associe le booking à l'utilisateur courant grace à devise
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all
  end

  private
  # definir le flat
  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  # definir les paramètres du booking pour la création et le new du formulaire simple form
  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
