<template>
  <div class="suggest">
    <div class="movie">
      <ul>
        <li>电影</li>
        <li v-for="movie in MovieList">
          <router-link :to="'/movie/movie_one/'+movie.id">{{movie.title}}</router-link>
        </li>
      </ul>
      <ul>
        <li>图书</li>
        <li v-for="book in BookList">
          <router-link :to="'/book/book_one/'+book.id">{{book.title}}</router-link>
        </li>
      </ul>
    </div>
    <div class="book">
      
    </div>
  </div>

</template>

<script>
  import Axios from 'axios'

export default {
  data() {
    return {
      MovieList:[],
      BookList:[]
    }
  },
  mounted(){
      Axios.get(API_PROXY+'https://api.douban.com/v2/movie/in_theaters?count=10&start=0')
        .then((res)=>{
        this.MovieList = res.data.subjects;
       });
      Axios.get(API_PROXY+'https://api.douban.com/v2/book/search?tag=小说&count=10&start=0')
        .then((res)=>{
        this.BookList = res.data.books;
        console.log(res.data.books);
       });
  },
  
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .suggest{
    margin-top: 1rem;
  }
  ul{
    padding: .3rem .7rem;
    /*height: 3.5rem;*/
    overflow: hidden;
    text-align: center;
  }
  ul li{
    float: left;
    line-height: .5rem;
    background: #ccc;
    height: .5rem;
    padding: .1rem;
    margin: .1rem;
  }
  ul li:first-child{
    display: block;
    float: none;
    background: #eee;
  }
  ul li a{
    color:#000;
  }
</style>
