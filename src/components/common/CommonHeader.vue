<template>
  <div class="header" :style="{background:$store.state.bgColor}">
    <slot name="btn">
      <button @click="up">{{$store.state.nav}}</button>
    </slot>
    <slot name="h2">
      <h2>{{$store.state.title}}</h2>
    </slot>
    <slot name="icon">
      <router-link to="/search" v-show="$store.state.bol"><i class="icon iconfont big">&#xe6d1;</i></router-link>
    </slot>
  </div>
</template>

<script>

export default {
  data() {
    return {
    }
  },
  methods:{
      up:function(){
          history.go(-1);
      }
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .header{
    display: flex;
    height: 1rem;
    color: #fff;
    z-index: 999;
  }
  .header button{
    width: 1rem;
    height: 1rem;
    color: #fff;
    background-color: inherit;
    border: none;
  }
  .header h2{
    flex: 1;
    text-align: center;
    /*text-indent: -1rem;*/
    line-height: 1rem;
    position: absolute;
    left: 1rem;
    right: 1rem;

  }
  .header{
    position: fixed;
    top: 0;
    width: 100%;
  }
  .header a{
    color: #fff;
    width: 1rem;
    line-height: 1rem;
    text-align: center;
    /*float: right;*/
    position: absolute;
    right: 0;
  }

</style>
