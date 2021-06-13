import { testActionTypes } from './test.action.types'
const initialState = {

}

export const test = (state = initialState, { type, payload }) => {
    switch (type) {

    case testActionTypes.:
        return { ...state, ...payload }

    default:
        return state
    }
}

