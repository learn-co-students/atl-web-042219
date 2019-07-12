import React, { Fragment } from 'react'
import { connect } from 'react-redux'

const Table = (props) => {

  const renderPlates = (array) => {
    return array.map((x, index) => {
      return <div className="empty-plate" style={{ top: -7 * index }} />
    })
  }

  return (
    <Fragment>
      <h1 className="remaining">
        You have: ${props.wallet} remaining!
      </h1>
      <div className="table">
        <div className="stack">
          {
            renderPlates(props.eaten)
          }
        </div>
      </div>
    </Fragment>
  )
}


// console.log(Table)
// let connectorFunction = connect(mapStateToProps)
// console.log(connectorFunction)
// let connectedTable = connectorFunction(Table)
// console.log(connectedTable)
// export default connectedTable

let mapStateToProps = (state) => {
  return state.order
}

export default connect(mapStateToProps)(Table)
