import React from 'react'
import { connect } from 'react-redux'

const Sushi = (props) => {
  return (
    <div className="sushi">
      <div className="plate"
        onClick={() => props.dispatch({ type: "EAT_SUSHI", ...props })}>
        {
          props.eaten.includes(props.id) ? null : <img src={props.img_url} width="100%" />
        }
      </div>
      <h4 className="sushi-details">
        {props.name} - ${props.price}
      </h4>
    </div>
  )
}

let mapStateToProps = (state) => ({ eaten: state.order.eaten })

export default connect(mapStateToProps)(Sushi)