import React from 'react'
import { connect } from 'react-redux'

const MoreButton = (props) => {
  return <button onClick={() => props.dispatch({ type: "MOAR_SUSHI" })}>
    More sushi!
  </button>
}

export default connect()(MoreButton)