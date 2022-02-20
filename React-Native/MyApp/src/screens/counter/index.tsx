import React, { useMemo } from 'react';
import {View} from 'react-native';
import Count from '../../components/count';
import {decreaseCountAction, increaseCountAction} from '../../redux-store/actions/counter';
import {useSelector, useDispatch} from 'react-redux';
import HelloUser from '../../components/HelloUser';

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

  // useMemo to solve refrence and if you want to rerender and re-evaluate add dependancy at []
  const data =useMemo(()=>{
    return {name:''}
  },[])

  return (
    <View style={{flex: 1}}>
      <Count
        count={count}
        increaseCount={handleIncrease}
        decreaseCount={handleDecrease}
      />
      <HelloUser name="ahmed" data={data}/>
    </View>
  );
};

export default CounterScreen;
