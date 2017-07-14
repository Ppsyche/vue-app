<template>
  <div class="top-250">
      <div class="movie-list" v-for="movie in movieList">
        <router-link :to="'/movie/movie_one/'+movie.id">
          <div class="movie-img">
            <img :src="movie.images.small" alt="">
          </div>
          <div class="movie-title">
            <span>{{movie.title}}</span>
            <p><span v-for="genre in movie.genres">
              {{genre}}
            </span>({{movie.year}})(平均{{movie.rating.average}}分)</p>
          </div>
        </router-link>
      </div>
  </div>
</template>

<script>

  import Axios from 'axios'
  import $ from 'jquery'
  export default {
  data() {
    return {
      movieList:[],
    }
  },
  mounted:function() {
    this.$store.dispatch('changeTitle',['photo','rgb(63, 81, 181)','<',false]);
    Axios.get(API_PROXY+'https://api.douban.com/v2/movie/search?q='+this.$route.params.name)
          .then((res)=>{
          this.movieList = res.data.subjects;
      });
  },
  watch:{
    '$route'(to,from){
      Axios.get(API_PROXY+'https://api.douban.com/v2/movie/search?q='+this.$route.params.name)
            .then((res)=>{
            this.movieList = res.data.subjects;
        });
    }
  }

}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .top-250{
    margin-top: 1rem;
    /*margin-bottom: 1rem;*/
  }
  .movie-list{
    padding: 0.4rem;
    margin: 0.4rem 0;
  }
  .movie-list .movie-img{
    width: 0.8rem;
    height: 0.8rem;
    float: left;
  }
  .movie-list .movie-img img{
    width: 100%;
    height: 100%;
  }
  .movie-list .movie-title{
    float: left;
    width: 4.0rem;
    margin-left: 0.6rem;
    border-bottom: 1px #ccc solid;
    color: #000;
  }



</style>
