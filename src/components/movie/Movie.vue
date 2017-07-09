<template>
  <div class="movie">
    <common-header>
      <button>{{$store.state.nav}}</button>
    </common-header>
    <movie-nav></movie-nav>
    <!--<movie-top250></movie-top250>-->
    <router-view></router-view>
    <common-footer></common-footer>
  </div>
</template>

<script>

  import CommonHeader from '../common/CommonHeader'
  import MovieNav from './MovieNav'
  import CommonFooter from '../common/CommonFooter'
  import MovieTop250 from './MovieTop250'

export default {
  data() {
    return {

    }
  },
  components:{
    CommonHeader,
    MovieNav,
    CommonFooter,
    MovieTop250
  },
  mounted(){
    this.$store.dispatch('changeTitle',['movie','rgb(33, 150, 243)','首页']);
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";


</style>
