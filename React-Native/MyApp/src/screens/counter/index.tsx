import React, {useCallback, useMemo} from 'react';
import {Button, View} from 'react-native';
import Count from '../../components/count';
import {
  decreaseCountAction,
  increaseCountAction,
} from '../../redux-store/actions/counter';
import {useSelector, useDispatch} from 'react-redux';
import HelloUser from '../../components/HelloUser';
import {useEffect} from 'react';
import {decrement, increment} from '../../redux-store/reducers/counterReducer';
import {login, logout} from '../../redux-store/reducers/authSlice';

const CounterScreen = () => {
  const dispatch = useDispatch();
  const globalState = useSelector(state => state);
  const count = useSelector(state => {
    if (state.counter.count === 0) {
      return 'no number';
    }
    return state.counter.count;
  });
  const auth = useSelector(state => {
    return state.auth.authorized;
  });
  console.log('state', auth);

  const handleIncrease = useCallback(() => {
    // dispatch(increaseCountAction(1));
    //using toolkit actions
    dispatch(increment(1));
  }, [dispatch]);

  const handleDecrease = () => {
    // dispatch(decreaseCountAction(3));
    //using toolkit actions
    dispatch(decrement(3));
  };

  const handleAuthintication = () => {
    !auth ? dispatch(login()) : dispatch(logout());
  };

  // useMemo to solve refrence and if you want to rerender and re-evaluate add dependancy at []
  const data = useMemo(() => {
    return {name: ''};
  }, []);

  //useCallback for not returned functions
  const addAge = useCallback(() => {
    console.log('hi ');
  }, []);

  useEffect(() => {
    handleIncrease();
  }, []);

  return (
    <View style={{flex: 1}}>
      <Count
        count={count}
        increaseCount={handleIncrease}
        decreaseCount={handleDecrease}
      />
      <HelloUser name="ahmed" data={data} addAge={addAge} />
      <Button
        title={!auth ? 'login' : 'logout'}
        onPress={() => handleAuthintication()}
      />
    </View>
  );
};

export default CounterScreen;
