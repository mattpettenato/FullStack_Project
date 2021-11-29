import React from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { signup } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import SignUp from './signup';
import { clearErrors } from '../../actions/errors_actions';

const mapStateToProps = ({ errors }) => ({
  errors: errors.session,
  formType: 'signup',

  // formType: 'signup',
  // navLink: <Link to="/login">Log in instead</Link>,
})

const mapDispatchToProps = dispatch => {
  return {
    processForm: (user) => dispatch(signup(user)),
    // openModal: modal => dispatch(openModal(modal)),

    clearErrors: () => dispatch(clearErrors()),
    otherForm: (
      <button onClick={() => dispatch(openModal('login'))}>
        Login
      </button>
    ),
    closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SignUp)