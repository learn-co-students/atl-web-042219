let initialState = {
  eaten: [],
  wallet: 100,
  plates: 0
}

export default (state = initialState, action) => {
  switch (action.type) {
    case "WASH_PLATES": {
      return { ...state, plates: 0 }
    }
    case "EAT_SUSHI": {
      let affordableSushi = action.price <= state.wallet
      let uneatenSushi = !state.eaten.includes(action.id)
      if (affordableSushi && uneatenSushi) {
        let wallet = state.wallet - action.price
        let eaten = state.eaten.concat(action.id)
        return { wallet, eaten, plates: state.plates + 1 }
      } else {
        return state
      }
    }
    default: {
      return state
    }
  }
}