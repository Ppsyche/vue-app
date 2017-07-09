/**
 * Created by apple on 17/6/22.
 */

//引入相关文件
import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

//定义初始化变量
const state = {
  title:'movie',
  bgColor:'rgb(33, 150, 243)',
  nav:'首页',
  photoList:[]
}

//定义动作 事件处理方法
const mutations = {
  changeTitle(state,status){
    state.title = status[0];
    state.bgColor = status[1];
    state.nav = status[2];
  },
  photoList(state,status){
    state.photoList = status;
  },
  // ,
  // changeBgColor(state,status){
  //   state.bgColor = status;
  // }
}

//对外的事件方法
const actions = {
  changeTitle:({commit},status)=>commit('changeTitle',status),
  photoList:({commit},status)=>commit('photoList',status)
}

const getters = {

}

export default new Vuex.Store({
  state,
  mutations,
  actions,
  getters
})
