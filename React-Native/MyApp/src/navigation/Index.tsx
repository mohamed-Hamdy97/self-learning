import React from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {Provider} from 'react-redux';
import Routes from './Routes';
import {storeConfige} from '../redux-store';

const store = storeConfige();
// store.subscribe(RootApp);
// console.log(store.getState()?.counter);

export default function RootApp() {
  return (
    //subiscribe for 
    <Provider store={store}>
      <NavigationContainer>
        <Routes />
      </NavigationContainer>
    </Provider>
  );
}

