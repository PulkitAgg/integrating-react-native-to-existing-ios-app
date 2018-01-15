'use strict';

import React from 'react';
import ReactNative, {
  AppRegistry,
  StyleSheet,
  Text,
  View,
} from 'react-native';


const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'green',
  },
  welcome: {
    fontSize: 20,
    color: 'white',
  },
});


class NativeApp extends React.Component {
  render() {
      console.warn("props",this.props)
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>We're live from React Native!!!</Text>
      </View>
    )
  }
}


AppRegistry.registerComponent('NativeApp', () => NativeApp);