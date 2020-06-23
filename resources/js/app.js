
require('./bootstrap');

window.Vue = require('vue');

import Vuex from 'vuex'
import storeIndex from './store/index'
import filter from './filter'

Vue.use(Vuex)

import VueChatScroll from 'vue-chat-scroll'
Vue.use(VueChatScroll)

const store = new Vuex.Store(storeIndex)

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('main-app', require('./components/AppComponent.vue').default);


const app = new Vue({
    el: '#app',
    store,
    
});
