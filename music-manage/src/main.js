import Vue from 'vue'
import App from './App'
import router from './router/index'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import './assets/css/main.css'
import 'babel-polyfill'
import VCharts from 'v-charts'

import store from './store/index'

//查看大图的引入资源
import VueDirectiveImagePreviewer from 'vue-directive-image-previewer'
import 'vue-directive-image-previewer/dist/assets/style.css'
Vue.use(VueDirectiveImagePreviewer)


Vue.use(ElementUI)
Vue.use(VCharts)

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  render: h => h(App)
})
