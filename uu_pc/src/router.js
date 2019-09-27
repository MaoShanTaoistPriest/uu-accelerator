import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index.vue'
import Games from './views/Games.vue'
import Channel from './views/Channel.vue'
import Box from './views/Box.vue'
import Contact from './views/Contact.vue'

Vue.use(Router)

export default new Router({
  routes: [{
    path: '/',
    name: 'index',
    component: Index
  }, {
    path: '/Index',
    name: 'index',
    component: Index
  }, {
    path: '/Games',
    name: 'games',
    component: Games
  }, {
    path: '/Channel',
    name: 'channel',
    component: Channel
  }, {
    path: '/Box',
    name: 'box',
    component: Box
  }, {
    path: '/Contact',
    name: 'contact',
    component: Contact
  }, ]
})