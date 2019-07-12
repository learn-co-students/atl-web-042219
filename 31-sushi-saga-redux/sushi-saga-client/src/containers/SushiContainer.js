import React, { Fragment } from 'react'
import Sushi from '../components/Sushi'
import MoreButton from '../components/MoreButton'
import { connect } from 'react-redux'
import { getSushi } from "../services/backend"

class SushiContainer extends React.Component {
  componentDidMount() {
    getSushi().then(data => this.props.dispatch({ type: "GET_SUSHI", data: data }))
  }

  render() {
    return (
      <Fragment>
        <div className="belt">
          {this.props.sushiPage.map(s => <Sushi {...s} key={s.id} />)}
          <MoreButton />
        </div>
      </Fragment>
    )
  }

}

let mapStateToProps = (state) => {
  let offset = state.menu.pageOffset
  return {
    sushiPage: state.menu.sushi.slice(offset, offset + 4)
  }
}

export default connect(mapStateToProps)(SushiContainer)