import {all, call} from 'redux-saga/effects'
import { testActionTypes } from './test.action.types'

export function* testSagas() {
    yield all([call()])
}
