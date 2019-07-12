import React, { Fragment } from 'react'
import { connect } from 'react-redux'
import WashButton from '../components/WashButton'

const Table = (props) => {

  const renderPlates = (count) => {
    let plateElements = []
    for (let i = 0; i < count; i++) {
      plateElements.push(<div className="empty-plate" style={{ top: -7 * i }} />)
    }
    return plateElements
  }

  return (
    <Fragment>
      <h1 className="remaining">
        You have: ${props.wallet} remaining!
      </h1>
      <div className="table">
        <WashButton />
        <div className="stack">
          {
            renderPlates(props.plates)
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
