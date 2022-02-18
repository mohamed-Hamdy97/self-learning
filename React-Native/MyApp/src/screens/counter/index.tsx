import React from 'react';
import { View } from 'react-native';
import Count from "../../components/count";

const CounterScreen = ()=>{
    return (
        <View style={{flex:1}}>
            <Count />
        </View>
    );
}

export default CounterScreen;