module BookingsHelper
  def rating_star(bookings)
    booking_ratings = bookings.each_with_object([0,0]) do |booking, result|
      booking.reviews.each do |review|
        result[0] += review.rating
        result[1] += 1
      end
    end
    average = if booking_ratings.last != 0
      booking_ratings.first / booking_ratings.last
    else
      "Ce coach n'a pas encore été noté"
    end
    tag.div class: "coach-rating" do
      if average.is_a? Numeric
        average.times do
          concat image_tag "dumbell.svg"
        end
        remaining = 5 - average
        remaining.times do
          concat image_tag "dumbell_white.svg"
        end
      else
        average
      end
    end
  end
end
