import React from 'react';
import {View, Text, Button, SafeAreaView} from 'react-native';

export default function () {
  return (
    <SafeAreaView>
      <Button
        title="Increment"
        //   onPress={() => actions.increment(1)}
      ></Button>

      <View>
        <Text
          style={{
            fontSize: 24,
            fontWeight: '600',
            padding: 8,
            textAlign: 'center',
          }}>
          1{/* {state.counter.toString()} */}
        </Text>
      </View>

      <Button
        title="Decrement"
        //   onPress={() => actions.decrement(1)}
      ></Button>
    </SafeAreaView>
  );
}
