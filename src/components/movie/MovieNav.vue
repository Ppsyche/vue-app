<template>
  <div class="nav">
    <ul>
      <li><router-link to="/movie/top250">top250</router-link></li>
      <li><router-link to="/movie/hot">正在热映</router-link></li>
      <li><router-link to="/movie/coming">即将上映</router-link></li>
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
    height: 1rem;
    color: #ccc;
    background: rgb(33, 150, 243);
  }
  .nav ul{
    display: flex;
  }
  .nav ul li{
    flex: 1;
    height: 1rem;
    text-align: center;
    line-height: 1rem;
  }
  .nav{
    position: fixed;
    top: 1rem;
    width: 100%;
  }
  .nav a{
    color: #ccc;
    outline: none;
  }
  .nav a.router-link-active{
    color: #fff;
  }

</style>
