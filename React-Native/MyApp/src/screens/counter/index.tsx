import React from 'react';
import {View} from 'react-native';
import Count from '../../components/count';
import {Store} from 'redux';
import {increaseCountAction} from '../../redux-store/actions/counter';

const CounterScreen = () => {
  const handleIncrease = () => {
    // increaseCountAction(dispatch)
  };

  const handleDecrease = () => {
    // increaseCountAction(dispatch)
  };
  return (
    <View style={{flex: 1}}>
      <Count
        count={0}
        increaseCount={handleIncrease}
        decreaseCount={handleDecrease}
      />
    </View>
  );
};

export default CounterScreen;
