import React from "react";


const ReviewIndex = props => {
  let starRating

  if (props.review.rating === 1){
    starRating =
      <div className="stars-div">
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
      </div>
  }
  if (props.review.rating === 2){
    starRating = 
      <div className="stars-div">
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
      </div>

  }
  if (props.review.rating === 3){
    starRating = 
      <div className="stars-div">
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
      </div>
  }
  if (props.review.rating === 4){
    starRating = 
      <div className="stars-div">
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
      </div>
  }
  if (props.review.rating === 5){
    starRating = 
      <div className="stars-div">
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
        <span className="fa-stack fa-xs icon-star">
          <i className="fa fa-square fa-stack-2x"></i>
          <i className="fas fa-star fa-stack-1x"></i>
        </span>
      </div>
  }

  let authorName
  if (props.review.author_id) {
    authorName = props.allUsers[props.review.author_id].username
  }

  let month;
  month = props.review.created_at.substring(5, 7)

  let day;
  day = props.review.created_at.substring(8, 10)

  let year;
  year = props.review.created_at.substring(0, 4)

  return (
    <div className="reviews01">

      <div className='reviews01-left'>
        <i className="fas fa-user fa-2x"></i>
        <div className="review-name">
          {authorName}
        </div>
        <div className="date-date">
          {month + "-" + day + "-" + year}
        </div>
        {props.currentUser === props.review.author_id ? (
          <button className="rev-del" onClick={() => props.deleteReview(props.review.id)}>Delete Your Review</button>
          // <h1>test</h1>
        ): null}
      </div>

      <div className="reviews01-right">
        <div className="review-rating">
          <div className="stars-div">
            {starRating}
          </div>
        </div>

        <div className="review-body">
          {props.review.body}
        </div>


      </div>

    </div>
  )
}

export default ReviewIndex
