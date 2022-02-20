import React from 'react';
import {View, Text, Button} from 'react-native';

const HelloUser = ({name = '', data = {}, addAge = null}) => {
  console.log('at  ViewMsg', name, data);

  return (
    <View style={{justifyContent: 'center'}}>
      <Button
        title="addAge"
        onPress={() => {
          addAge();
        }}
      />
      <Text>hello </Text>
      <Text>{name}</Text>
    </View>
  );
};

export default React.memo(HelloUser);
