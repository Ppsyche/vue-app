<template>
  <div class="book">
    <div class="books">
      <div class="book-list" v-for="book in bookList">
        <router-link :to="'/book/book_one/'+book.id">
          <div class="book-img">
            <img :src="book.images.small" alt="book.title">
          </div>
          <div class="book-title">
            <p><span>{{book.title}}({{book.rating.average}})</span></p>
            <p><span v-for="authors in book.author">
              {{authors}}
            </span>/<span>{{book.publisher}}</span></p>
          </div>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>

  import Axios from 'axios'
  import $ from 'jquery'

export default {
  data() {
    return {
      bookList:[],
    }
  },
  components:{
  },
  mounted:function() {
      this.$store.dispatch('changeTitle',['photo','rgb(63, 81, 181)','<',false]);
    Axios.get(API_PROXY+'https://api.douban.com/v2/book/search?q='+this.$route.params.name)
          .then((res)=>{
          this.bookList = res.data.books;
      });
  },
  watch:{
    '$route'(to,from){
      Axios.get(API_PROXY+'https://api.douban.com/v2/book/search?q='+this.$route.params.name)
            .then((res)=>{
            this.bookList = res.data.books;
        });
    }
  }

}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .books{
    margin-top: 1rem;
  }
  .book-list{
    padding: 0.4rem;
    margin: 0.4rem 0;
  }
  .book-list .book-img{
    width: 0.8rem;
    height: 0.8rem;
    float: left;
  }
  .book-list .book-img img{
    width: 100%;
    height: 100%;
  }
  .book-list .book-title{
    float: left;
    width: 4.0rem;
    margin-left: 0.6rem;
    border-bottom: 1px #ccc solid;
    color: #000;
  }
  p{
    width: 4rem;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
  }
</style>
