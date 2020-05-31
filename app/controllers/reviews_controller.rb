class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @review.booking = booking.find(params[:id])
    @review.user = current_user
    if @review.save!
      redirect_to dashboard_path(@user), notice: 'Votre commentaire a été ajouté. Merci!'
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
