<template>
  <div class="footer" :style="{background:$store.state.bgColor}">
    <ul>
      <li><router-link to="/movie">电影</router-link></li>
      <li><router-link to="/music">音乐</router-link></li>
      <li><router-link to="/book">书籍</router-link></li>
      <li><router-link to="/photo">图片</router-link></li>
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
</style>
