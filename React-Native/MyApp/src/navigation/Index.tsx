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

/* 
import React from 'react';
import {NavigationContainer} from '@react-navigation/native';
import { createStore } from "redux";
import Routes from './Routes';
import AppReducer from "../reducers/index";

const store = createStore(AppReducer)
store.subscribe(RootApp)
store.dispatch({type:'increment'})
console.log(store.getState()?.counter.count);

export default function RootApp() {
  return (
    <NavigationContainer>
      <Counter count={store.getState()?.counter.count} increaseCount={()=>{
        // increaseCountAction(store.dispatch)
        store.dispatch({type:'increment'})
      }}/>
    </NavigationContainer>
  );
}

import {View, Text, Button, SafeAreaView} from 'react-native';
import { increaseCountAction } from '../actions/counter';

type CountProps = {
  count: number;
  increaseCount: () => void;
  decreaseCount: () => void;
};

 function Counter({count, increaseCount, decreaseCount}: CountProps) {
   console.log(count);
   
  return (
    <SafeAreaView>
      <Button title="Increment" onPress={() => increaseCount()}></Button>

      <View>
        <Text
          style={{
            fontSize: 24,
            fontWeight: '600',
            padding: 8,
            textAlign: 'center',
          }}>
          {count}
        </Text>
      </View>

      <Button title="Decrement" onPress={() => decreaseCount()}></Button>
    </SafeAreaView>
  );
}

*/
