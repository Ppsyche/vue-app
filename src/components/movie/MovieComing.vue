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
    <div class="loading" v-show="show">
        <span><img src="../../assets/img/loading.gif"></span>
    </div>
  </div>
</template>

<script>

  import Axios from 'axios'

export default {
  data() {
    return {
      movieList:[]
    }
  },
  mounted:function() {
      Axios.get(API_PROXY+'https://api.douban.com/v2/movie/coming_soon?count=10&start=0')
        .then((res)=>{
          this.movieList = res.data.subjects;
      });
  }

}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .top-250{
    margin-top: 2rem;
    margin-bottom: 1rem;
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
  .loading{
    text-align: center;
  }



</style>
