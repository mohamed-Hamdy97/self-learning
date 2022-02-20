import React from 'react';
import {View, Text} from 'react-native';

const HelloUser = ({name = '', data={}}) => {
  console.log('at  ViewMsg', name, data);

  return (
    <View style={{justifyContent: 'center'}}>
      <Text>hello </Text>
      <Text>{name}</Text>
    </View>
  );
};

export default React.memo(HelloUser);
