<template>
  <div class="book">
    <common-header></common-header>
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
    <div class="loading" v-show="show">
        <span><img src="../../assets/img/loading.gif"></span>
    </div>
    <common-footer></common-footer>
  </div>
</template>

<script>

  import CommonHeader from '../common/CommonHeader'
  import CommonFooter from '../common/CommonFooter'
  import Axios from 'axios'
  import $ from 'jquery'

export default {
  data() {
    return {
      bookList:[],
      show:true
    }
  },
  components:{
    CommonHeader,
    CommonFooter,
  },
  mounted:function() {
      this.$store.dispatch('changeTitle',['book','rgb(121, 85, 72)','<']);
      this.loadData();
      var _this = this;
      $(window).scroll(function(){
          var windowHeight = $(this).height();
          var scrollTop = $(this).scrollTop();
          var height = $(document).height();
          if(windowHeight + scrollTop >= height){
            _this.show = true;
            _this.loadData();
          };
      });
  },
  methods:{
      loadData(){
        var length = this.bookList.length;
        Axios.get(API_PROXY+'https://api.douban.com/v2/book/search?tag='+this.$route.params.name+'&count=10&start='+length)
          .then((res)=>{
          // console.log(res.data);
          // console.log(res.data.subjects[0].id);
          this.bookList = this.bookList.concat(res.data.books);
          this.show = false;
      });
      }
  },
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
  .loading{
    text-align: center;
    margin-bottom: 1rem;
  }

</style>
