// import React from 'react';
import { Link } from 'react-router-dom';
import NavBarContainer from '../nav_bar/nav_bar_container';
// import BusinessIndexItem from './business_index_item';
import React, { useEffect, useRef } from 'react';
import SearchIndexItem from '../search/search_index_item'

class SearchIndex extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {
    // if (this.props.match.params.query === undefined) {
    //   // this.props.fetchBusinesses()
    // } else {
    //   // this.props.getSearchBusinesses(this.props.match.params.query)
    //   // console.log('test')
    // }

  }

  render(){
    let orderedBus = []
    for (let i = this.props.businesses.length -1; i >= 0 && orderedBus.length < 4; i--){
      orderedBus.push(this.props.businesses[i])
    }

    let oneBus = orderedBus
    let busBox1 = oneBus.map((business, idx) => {
      return (
        <SearchIndexItem key={idx} currentUser={this.props.currentUser} business={business} fetchBusiness={this.props.fetchBusiness} fetchReviews={this.props.fetchReviews} />
        // <ul>test</ul>
      )
    })

    // const items = this.props.businesses.map((item) => 
    //   <BusinessIndexItem business={item} key={item.id} fetchBusiness={this.props.fetchBusiness} fetchReviews={this.props.fetchReviews}/>
    // );

    if (!this.props.fetchBusinesses) {
      return null;
    } else {
    return (
      <div className="bus-index-main">
          <div className="pls-search-123" >
          {/* {items} */}
          {busBox1}
        </div>
      </div>
    )
  }
  }
}
export default SearchIndex;
