<template>
  <div class="collect-book">
    <div class="book-list" v-for="book in bookList" v-show="bookList">
      <router-link :to="'/book/book_one/'+book.b_id">
        <div class="book">
          <div class="top">
            <div class="img">
              <img :src="book.b_img" :alt="book.b_name">
            </div>
            <div class="text">
              <p class="name">{{book.b_name}}<span>({{book.b_average}})</span></p>
              <p class="summary">简介：{{book.b_summary}}</p>
            </div>
          </div>        
          <p class="time">收藏时间：{{book.cb_time}}</p>
        </div>
      </router-link>
    </div>
    <div class="nothing" v-show="!bookList">
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
      bookList:[],
      // show:true,
      login_id:0,
    }
  },
  mounted:function() {
    if(document.cookie){
      var arr=document.cookie.split(";")[1];
      var new_arr=arr.split("=")[1];
      this.login_id=new_arr;
      this.collect_book_all();
    } 
  },
  methods:{
    collect_book_all:function(){
      Axios.get("http://localhost:3000/collect_book_all",{
        params:{
          u_id:this.login_id,
        }
      }).then((res)=>{
        console.log(JSON.parse(res.data));
        this.bookList=JSON.parse(res.data);
        console.log(this.bookList);
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
  .collect-book{
    margin-top: 1.63rem;
  }
  .book-list{
    padding: 0.4rem;
    /*margin-top: 0.4rem;*/
  }
  .book-list .book{
    color: #000;
    border-bottom: 1px #ccc solid;
  }
  .book-list .top{
    overflow: hidden;
  }
  .book-list .img{
    float: left;
    width: 1.6rem;
    margin-right:.5rem;
  }
  .book-list .img img{
    width: 1.6rem;
  }
  .book-list .text{
    float: left;
    width: 3.5rem;
  }

  .book-list .book .name{
    font-weight: bolder;
    font-size: .3rem;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }
  .book-list .book .summary{
    /*height: 1rem;*/
    overflow : hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 4;
    -webkit-box-orient: vertical;
  }
  .book-list .book .time{
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
