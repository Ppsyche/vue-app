<template>
  <div class="footer" :style="{background:$store.state.bgColor}">
    <ul>
      <li><router-link to="/movie"><i class="icon iconfont">&#xe70e;</i></router-link></li>
      <!-- <li><router-link to="/music">音乐</router-link></li> -->
      <li><router-link to="/book"><i class="icon iconfont">&#xe610;</i></router-link></li>
      <!-- <li><router-link to="/book"><i class="icon iconfont big">&#xe6d1;</i></router-link></li> -->
      <li><router-link to="/photo"><i class="icon iconfont">&#xe61c;</i></router-link></li><li><router-link to="/photo"><i class="icon iconfont">&#xe694;</i></router-link></li></router-link></li>
    </ul>
  </div>
</template>

<script>

export default {
  data() {
    return {

    }
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  @import "../../assets/font/iconfont.css";
  /*@import "../../assets/font/demo.css";*/
  .footer{
    height: 1rem;
    color: #fff;
  }
  .footer ul{
    display: flex;
  }
  .footer ul li{
    flex: 1;
    height: 1rem;
    text-align: center;
    line-height: 1rem;
  }
  .footer{
    position: fixed;
    bottom: 0;
    width: 100%;
  }
  .footer a{
    color: #ccc;
    outline: none;
  }
  .footer a.router-link-active{
    color: #fff;
  }
  .footer .icon{
    font-size: 2em;
  }
</style>
