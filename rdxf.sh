#!/bin/bash

Lword=$1
Cword=$(tr a-z A-Z <<<${Lword:0:1})${Lword:1}
mkdir $1
cd $1

# actions
echo "import { $1ActionTypes } from './$1.action.types'
" >>$1.actions.js

# actionTypes
echo "export const $1ActionTypes = {
    
}
" >>$1.actionTypes.js

# reducer
echo "import { $1ActionTypes } from './$1.action.types'
const initialState = {

}

export const $1 = (state = initialState, { type, payload }) => {
    switch (type) {

    case $1ActionTypes.:
        return { ...state, ...payload }

    default:
        return state
    }
}
" >>$1.reducer.js

# selector
echo "import { createSelector } from 'reselect'

export const  select$Cword = store => store.$1
" >>$1.selector.js

# saga
if [[ $2 == "saga" ]]; then
    echo "import {all, call} from 'redux-saga/effects'
import { $1ActionTypes } from './$1.action.types'

export function* $1Sagas() {
    yield all([call()])
}
" >>$1.saga.js

fi
