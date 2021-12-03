import React from 'react';
import { Link } from 'react-router-dom';
import Search from '../search/search_home';
import NavBarContainer from '../../components/nav_bar/nav_bar_container';
import BusinessIndexItem from '../business/business_index_item';

class Splash extends React.Component {
  constructor(props) {
    super(props);
  }
  
  componentDidMount() {

    this.props.fetchBusiness(1);
    this.props.fetchBusiness(2);
    this.props.fetchBusiness(3);
    // this.props.fetchBusiness(4);
    // this.props.fetchBusinesses()
  }

  render() {
    let bus;
    if (this.props.businesses[3]) {
      // if (this.props.businesses.length !== 0) {
    console.log(this.props.businesses)
    bus = this.props.businesses

      //   console.log(this.props)
    }
    
      return (
        <div className="splash">
          <header id="main-nav-bar">
            <NavBarContainer />
          </header>
          <div className="splash-background">
            <img src="https://images.unsplash.com/photo-1615937722923-67f6deaf2cc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" />
          </div>

          <div className="splash-main">
            <div className="main-logo">
              <Link to="/"><img src="https://s3-media0.fl.yelpcdn.com/assets/public/yelp_favicon.yji-5e8cc24f40ca89107dc7a349ed209e00.svg" /></Link>
            </div>
            <Search />
          </div>

          <div className="new-businesses">
            <p className="new-businesses-title">Find the Best Businesses in Town</p>
            <div>
              <Link to="/businesses/1">bus1</Link>
              <Link to="/businesses">INDEXbus</Link>
              {/* <ul className="listing-container">
                {this.props.businesses.map((business, idx) => (
                  <BusinessIndexItem key={idx} session={this.props.session} business={business} removeBusiness={this.props.removeBusiness} />
                ))}
              </ul> */}

              <div>

                {bus}
              </div>
                


            </div>
          </div>
          <footer className= "footer">
            <div className="mylinks">
              <p className="about-user-title">About</p>
              <a href="https://www.linkedin.com/in/matthew-pettenato-936236123/" target="_blank">Linkedin</a>
              <a href="https://github.com/mattpettenato" target="_blank"> Git Hub</a>
            </div>
            {/* <img src={window.footerURL} alt="" /> */}
          </footer>
        </div>
      )
      }
}

export default Splash;