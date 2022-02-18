import React from 'react';
import {useNavigation} from '@react-navigation/native';
import {Button, SafeAreaView, StyleSheet, View} from 'react-native';

const HomeScreen = () => {
  const navigation = useNavigation();
  return (
    <SafeAreaView style={styles.container}>
      <Button
        title="go to counter"
        onPress={() => navigation.navigate('counter')}
      />
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});

export default HomeScreen;
