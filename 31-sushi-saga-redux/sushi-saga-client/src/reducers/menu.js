let initialState = {
  sushi: [],
  pageOffset: 0
}

export default (state = initialState, action) => {
  switch (action.type) {
    case "GET_SUSHI": {
      return { ...state, sushi: action.data }
    }
    case "MOAR_SUSHI": {
      let newOffset = (state.pageOffset + 4) % 100
      return { ...state, pageOffset: newOffset }
    }
    default: {
      return state
    }
  }
}