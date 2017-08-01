<template>
  <div class="movie-one">
    <common-header>
      <button slot="icon" class="btn" v-if="!this.flag" @click="collect">
        <i class="icon iconfont big">&#xe572;</i>  
      </button>
      <button slot="icon" class="btn" v-if="this.flag" @click="nocollect">
        <i class="icon iconfont big">&#xe630;</i>
      </button>
    </common-header>
    <div class="movie-details">
      <div class="img-box">
        <img :src="movieDetails.images.large" :alt="movieDetails.title">
        <h3>{{movieDetails.title}}</h3>
      </div>
      <div class="peoples">
        <p>评分：{{movieDetails.rating.average}}</p>
        <p>类型：<span v-for="genres in movieDetails.genres">{{genres}}&nbsp;&nbsp;</span></p>
        <p>国家：<span v-for="countries in movieDetails.countries">{{countries}}&nbsp;&nbsp;</span></p>
        <p>导演：<span v-for="directors in movieDetails.directors">{{directors.name}}&nbsp;&nbsp;</span></p>
        <p>演员：<span v-for="casts in movieDetails.casts">{{casts.name}}&nbsp;&nbsp;</span></p>
      </div>
      <div class="abstract">
        <p>简介：</p>
        <p class="indent">{{movieDetails.summary}}</p>
      </div>
      
    </div>
  </div>
</template>

<script>

  import CommonHeader from '../common/CommonHeader'
  import Axios from 'axios'

export default {
  data() {
    return {
      movieDetails:[],
      flag:false,
    }
  },
  components:{
    CommonHeader,
  },
  mounted(){
    // console.log(this.$route.params.id);
    this.$store.dispatch('changeTitle',['movie','rgb(33, 150, 243)','<']);
    Axios.get(API_PROXY+'https://api.douban.com/v2/movie/subject/'+this.$route.params.id+'')
      .then((res)=>{
        // console.log(res.data.writer);
        this.movieDetails = res.data;
    });
  },
  methods:{
    collect:function(){
      if(document.cookie){
        this.flag=true;
        var arr=document.cookie.split(";")[1];
        var new_arr=arr.split("=")[1];
        this.login_id=new_arr;
        this.find_movie();
      }else{
        this.$router.push("/user/user_login");
      }
      
    },
    nocollect:function(){
      this.flag=false;
    },
    find_movie:function(){
      console.log(this.movieDetails.title);
      Axios.get("http://localhost:3000/find_movie",{
        params:{
          m_id:this.$route.params.id,
          m_name:this.movieDetails.title,
          u_id:this.login_id
        }
      }).then((res)=>{
        // console.log(res.data);
        this.user_all=JSON.parse(res.data);
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
  .movie-details{
    margin-top: 1rem;
    padding: 0 .3rem;
  }
  .img-box{
    text-align: center;
  }
  img{
    /*margin: 0 auto;*/
    height: 5rem;
  }
  p{
    padding-bottom: .1rem;
  }
  p.indent{
    text-indent: 2em;
  }
  .peoples{
    border-bottom: 1px solid #000;
  }
  .btn{
    color: #fff;
    width: 1rem;
    line-height: 1rem;
    text-align: center;
    /*float: right;*/
    position: absolute;
    right: 0;
  }
  .btn i{
    font-size: 2em;
  }
</style>
