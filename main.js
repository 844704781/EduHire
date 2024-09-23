import App from './App'
import Vue from 'vue'
import './uni.promisify.adaptor' //app兼容性的配置
import uView from '@/uni_modules/uview-ui'

Vue.config.productionTip = false
Vue.use(uView)

App.mpType = 'app'

const app = new Vue({
  ...App
})

app.$mount()

