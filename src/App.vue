<template>
  <img alt="Vue logo" src="./assets/logo.png">
  <!-- <HelloWorld msg="Welcome to Your Vue.js App!!"/> -->
  <write/>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import write from './components/write.vue'

export default {
  name: 'App',
  components: {
    HelloWorld,
    write
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
