class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def show
    @booking = Booking.find(params[:id])
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def edit
    @booking = Booking.find(params[:booking_id])
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    @review.user = current_user
    if @review.save!
      redirect_to coach_activity_path(@review.booking.coach_activity), notice: 'Votre commentaire a été ajouté. Merci!'
    else
      flash[:alert] = "Oups! Une erreur est survenue."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
