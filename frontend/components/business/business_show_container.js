import { connect } from 'react-redux';
import BusinessShow from './business_show';
import { fetchBusiness, fetchBusinesses } from '../../actions/business_actions'
import { fetchReview, fetchAllReviews, deleteReview } from '../../actions/review_actions'
import { fetchAllUsers } from '../../actions/users_actions';

const mSTP = (state, ownProps) => {
  return {
    currentUser: state.session.id,
    currentBusiness: state.entities.businesses[ownProps.match.params.businessId],
    reviews: Object.values(state.entities.reviews),
    reviewObject: state.entities.reviews,
    allUsers: state.entities.users
  }
};

const mDTP = (dispatch) => ({
  
  fetchBusiness: (businessId) => dispatch(fetchBusiness(businessId)),
  fetchAllReviews: (businessId) => dispatch(fetchAllReviews(businessId)),
  removeReview: reviewId => dispatch(deleteReview(reviewId))
  // fetchAllUsers: (userId) => dispatch(fetchAllUsers(userId))
  
});

export default connect(mSTP, mDTP)(BusinessShow);