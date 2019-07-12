import React from 'react'
import { connect } from 'react-redux'

const WashButton = (props) => {
  return <button onClick={props.washPlates}>
    Wash Plates!
  </button>
}

let mapDispatchToProps = (dispatch) => {
  return {
    washPlates: () => dispatch({ type: "WASH_PLATES" })
  }
}

export default connect(null, mapDispatchToProps)(WashButton)
