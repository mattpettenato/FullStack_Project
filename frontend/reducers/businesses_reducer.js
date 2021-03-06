import {
  RECEIVE_ALL_BUSINESSES,
  RECEIVE_BUSINESS
} from "../actions/business_actions";

const businessesReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = Object.assign({}, state)
  switch (action.type) {
    case RECEIVE_ALL_BUSINESSES:
      newState = action.businesses;
      return newState;
    case RECEIVE_BUSINESS:
      return Object.assign({}, state, { [action.business.id]: action.business })
    default:
      return state;
  }
};

export default businessesReducer;
