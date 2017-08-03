<template>
  <div class="nav">
    <ul>
      <li><router-link to="/user/collect/collect_movie">电影</router-link></li>
      <li><router-link to="/user/collect/collect_book">图书</router-link></li>
      <li><router-link to="/user/collect/collect_photo">图片</router-link></li>
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
  .nav{
    height: .63rem;
    color: #333;
    background: #fff;
    font-weight: bolder;
    font-size: .25rem; 
  }
  .nav ul{
    display: flex;
  }
  .nav ul li{
    flex: 1;
    height: .63rem;
    text-align: center;
    line-height: .63rem;
  }
  .nav{
    position: fixed;
    top: 1rem;
    width: 100%;
  }
  .nav a{
    display: inline-block;
    color: #333;
    outline: none;
    width: 100%;
    border-bottom: .03rem solid #fff;
  }
  .nav a.router-link-active{
    border-bottom-color: #439865;
    color: #439865;
  }

</style>
