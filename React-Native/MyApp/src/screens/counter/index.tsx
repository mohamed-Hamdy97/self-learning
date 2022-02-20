import React from 'react';
import {View} from 'react-native';
import Count from '../../components/count';
import {decreaseCountAction, increaseCountAction} from '../../redux-store/actions/counter';
import {useSelector, useDispatch} from 'react-redux';

const CounterScreen = () => {
  const dispatch = useDispatch();
  const count = useSelector(state => {
    if (state.counter.count === 0) {
      return 'no number';
    }
    return state.counter.count;
  });
  console.log('state', count);

  const handleIncrease = () => {
    dispatch(increaseCountAction(1));
  };

  const handleDecrease = () => {
    dispatch(decreaseCountAction(3));
  };

  return (
    <View style={{flex: 1}}>
      <Count
        count={count}
        increaseCount={handleIncrease}
        decreaseCount={handleDecrease}
      />
    </View>
  );
};

export default CounterScreen;
