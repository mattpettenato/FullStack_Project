json.partial! 'business', business: @business
json.reviews do 
  @business.reviews.each do |review|
      json.set! review.id do 
        json.partial! 'api/reviews/review', review: review
      end
  end
end
