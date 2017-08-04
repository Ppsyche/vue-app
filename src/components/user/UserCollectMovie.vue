<template>
  <div class="collect-movie">
    <div class="movie-list" v-for="movie in movieList" v-show="movieList">
      <router-link :to="'/movie/movie_one/'+movie.m_id">
        <div class="movie">
          <div class="top">
            <div class="img">
              <img :src="movie.m_img" :alt="movie.m_name">
            </div>
            <div class="text">
              <p class="name">{{movie.m_name}}<span>({{movie.m_rating}})</span></p>
              <p class="summary">简介：{{movie.m_summary}}</p>
            </div>
          </div>        
          <p class="time">收藏时间：{{movie.cm_time}}</p>
        </div>
      </router-link>
    </div>
    <div class="nothing" v-show="!movieList">
        <p>收藏夹怎么是空的Σ(っ°Д°;)っ</p>
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
      // show:true,
      login_id:0,
    }
  },
  mounted:function() {
    if(document.cookie){
      var arr=document.cookie.split(";")[1];
      var new_arr=arr.split("=")[1];
      this.login_id=new_arr;
      this.collect_movie_all();
    } 
  },
  methods:{
    collect_movie_all:function(){
      Axios.get("http://localhost:3000/collect_movie_all",{
        params:{
          u_id:this.login_id,
        }
      }).then((res)=>{
        this.movieList=JSON.parse(res.data);
        // console.log(this.movieList);
        // console.log(JSON.parse(res.data));
      }).catch((error)=>{
          console.log(error);
      });
    }
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .collect-movie{
    margin-top: 1.63rem;
  }
  .movie-list{
    padding: 0.4rem;
    /*margin-top: 0.4rem;*/
  }
  .movie-list .movie{
    color: #000;
    border-bottom: 1px #ccc solid;
  }
  .movie-list .top{
    overflow: hidden;
  }
  .movie-list .img{
    float: left;
    width: 1.6rem;
    margin-right:.5rem;
  }
  .movie-list .img img{
    width: 1.6rem;
  }
  .movie-list .text{
    float: left;
    width: 3.5rem;
  }

  .movie-list .movie .name{
    font-weight: bolder;
    font-size: .3rem;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }
  .movie-list .movie .summary{
    /*height: 1rem;*/
    overflow : hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 4;
    -webkit-box-orient: vertical;
  }
  .movie-list .movie .time{
    text-align: right;
    font-size: .2rem;
    color: #aaa;
  }
  
  .nothing{
    text-align: center;
    font-size: .3rem; 
    margin-top: 2rem;
  }



</style>
