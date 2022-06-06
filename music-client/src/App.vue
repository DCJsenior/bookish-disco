<template>
  <div id="app">
    <the-header />
    <router-view v-if="isRouterAlive" class="music-content"/>
    <song-audio/>
    <the-aside/>
    <play-bar/>
    <scroll-top/>
    <the-footer/>
  </div>
</template>

<script>
import TheHeader from './components/TheHeader';
import ScrollTop from './components/ScrollTop';
import TheFooter from './components/TheFooter';
import SongAudio from './components/SongAudio';
import TheAside from './components/TheAside';
import PlayBar from './components/PlayBar';

export default {
  name: 'App',
  components: {
    TheHeader,
    ScrollTop,
    TheFooter,
    SongAudio,
    TheAside,
    PlayBar
  },
  //刷新页面的东西
  provide () {    //父组件中通过provide来提供变量，在子组件中通过inject来注入变量。
    return {
      reload: this.reload
    }
  },
  data() {
    return{
      isRouterAlive: true                    //控制视图是否显示的变量
    }
  },
  methods: {
    reload () {
      this.isRouterAlive = false;            //先关闭，
      this.$nextTick(function () {
        this.isRouterAlive = true;         //再打开
      })
    }
  },

}
</script>

<style  lang="scss" scoped>
@import './assets/css/app.scss';
</style>
