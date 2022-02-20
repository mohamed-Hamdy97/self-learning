import React from 'react';
import {View, Text, Button, SafeAreaView} from 'react-native';

type CountProps = {
  count: number;
  increaseCount: () => void;
  decreaseCount: () => void;
};

const Count =({count, increaseCount, decreaseCount}: CountProps)=> {
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

export default Count
