import React from 'react'
import { Link } from 'react-router-dom';
class Search extends React.Component {
  constructor(props) {
    super(props)
  }

  render(){
    return (
      <div className="homesearch">
        <form>
            <label id="findme">Find</label>
          <div id="leftDiv">
            <input className="findsearchtext" type="text" placeholder="nail salons, plumbers, takeout..." />
          </div>
            <label id="findme">Near</label>
          <div id="rightDiv">
            <input className="findneartext" type="text" placeholder="San Francisco" />
          </div>
          <span id="search-submit" style={{width : '24px', height : '24px'}} >
            
            <button to="/businesses/search/food" className="search-btn" >
              {/* <span style="width: 24px;" style="height: 24px;" /> */}
              <Link to="/businesses/search/food">
              <i className="fas fa-search fa-lg"></i>
              </Link>
            </button>
            
          </span>
        </form>
      </div>
    )
  }
}

export default Search;