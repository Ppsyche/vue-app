<template>
  <div class="book">
    <common-header></common-header>
      <swipe class="my-swipe">
        <swipe-item class="item1"></swipe-item>
        <swipe-item class="item2"></swipe-item>
        <swipe-item class="item3"></swipe-item>
      </swipe>
      <div class="books">
        <div v-for="(books,n) in bookList">
          <h3>{{categorys[n]}}<router-link :to="'/book/book_more/'+categorys[n]">更多&gt;&gt;</router-link></h3>
          <ul class="some-novel">
            <li v-for="book in books">
              <router-link :to="'/book/book_one/'+book.id">
                <img :src="book.images.medium" :alt="book.title">
                <p>{{book.title}}</p>
              </router-link>
            </li>
          </ul>
          <!-- <div class="loading" v-show="show">
              <span><img src="../../assets/img/loading.gif"></span>
          </div> -->
        </div>
        <div class="more"><a href="">更多精彩&gt;&gt;</a></div>
      </div>
    <common-footer></common-footer>
  </div>
</template>

<script>

  import CommonHeader from '../common/CommonHeader'
  import CommonFooter from '../common/CommonFooter'
  import Axios from 'axios'
  // import $ from 'jquery'
  import {Swipe, SwipeItem } from 'vue-swipe'
  Swipe.auto= false;
export default {
  data() {
    return {
      bookList:[],
      category:["童话","小说","科普","奇幻"],
      categorys:[],
    }
  },
  components:{
    CommonHeader,
    CommonFooter,
    Swipe,
    SwipeItem
  },
  mounted(){
    this.$store.dispatch('changeTitle',['book','rgb(121, 85, 72)','<']);
    // var _this = this;
    for (let i = 0; i < this.category.length; i++) {
      Axios.get(API_PROXY+'https://api.douban.com/v2/book/search?tag='+this.category[i]+'&count=6&start=0')
        .then((res)=>{
          // console.log(res.data.books[0].title);
          this.categorys.push(this.category[i]);
          this.bookList.push(res.data.books);
            // this.show = false;
      });
    }
      
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/vue-swipe.css";

  .my-swipe {
    height: 200px;
    font-size: 30px;
    text-align: center;
    margin-top: 1rem;
  }
  .my-swipe .mint-swipe-item{
    height: 100%;
    background-repeat: no-repeat;
    background-position: center center;
    background-size: cover;
  }

  .item1 {
    background: url('https://img3.doubanio.com/lpic/s27102925.jpg');
    background-size: cover;
  }

  .item2 {
    background: url('https://img3.doubanio.com/lpic/s6989253.jpg');
    background-size: cover;
  }

  .item3 {
    background: url('https://img3.doubanio.com/lpic/s24468373.jpg');
    background-size: cover;
  }
  .books{
    padding: 0 .5rem;
    margin-bottom: 1rem;
    overflow: hidden;
  }
  h3{
    border-bottom: 1px solid #ccc;
    width: 100%;
    position: relative;
  }
  h3 a{
    font-size: .6em;
    /*margin-left: .5rem;*/
    position: absolute;
    right: 0;
    bottom: 0;
  }
  ul.some-novel{
    /*padding: .3rem 0;*/
    overflow: hidden;
  }
  ul.some-novel li{
    padding: .3rem .1rem 0;
    float: left;
  }
  ul.some-novel li img{
    width: 1.6rem;
    height: 2.25rem;
  }
  ul.some-novel p{
    text-align: center;
    width: 1.6rem;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
  }
  .more{
    height: .7rem;
    text-align: center;
    background: #0f0;
  }
  .more a{
    color: #fff;
    font-size: .3rem;
    line-height: .7rem;
  }
</style>
 