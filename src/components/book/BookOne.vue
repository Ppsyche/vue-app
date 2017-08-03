<template>
  <div class="book-one">
    <common-header>
      <button slot="icon" class="btn" v-if="!this.flag" @click="collect">
        <i class="icon iconfont big">&#xe572;</i>  
      </button>
      <button slot="icon" class="btn" v-if="this.flag" @click="nocollect">
        <i class="icon iconfont big">&#xe630;</i>
      </button>
    </common-header>
    <div class="book-details">
      <div class="img-box">
        <img :src="bookDetails.images.large" :alt="bookDetails.title">
        <h3>{{bookDetails.title}}</h3>
      </div>
      <div class="peoples">
        <p>评分：{{bookDetails.rating.average}}</p>
        <!-- <p>标签：<span v-for="tags in bookDetails.tags">{{tags.name}}&nbsp;&nbsp;</span></p> -->
        <p>作者：<span v-for="author in bookDetails.author">{{author}}&nbsp;&nbsp;</span></p>        
        <p>翻译：<span v-for="translator in bookDetails.translator">{{translator}}&nbsp;&nbsp;</span></p>
        <p>出版社：{{bookDetails.publisher}}</p>
        <p>页码：{{bookDetails.pages}}</p>
        <p>定价：{{bookDetails.price}}</p>
      </div>
      <div class="abstract">
        <p>简介：</p>
        <p class="indent">{{bookDetails.summary}}</p>
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
      bookDetails:[],
      flag:false,
      login_id:0
    }
  },
  components:{
    CommonHeader,
  },
  mounted(){
    // console.log(this.$route.params.id);
    this.$store.dispatch('changeTitle',['book','rgb(121, 85, 72)','<'],false);
    Axios.get(API_PROXY+'https://api.douban.com/v2/book/'+this.$route.params.id+'')
      .then((res)=>{
        // console.log(res.data);
        this.bookDetails = res.data;
    });
    if(document.cookie){
      console.log("aaaaa");
      var arr=document.cookie.split(";")[1];
      var new_arr=arr.split("=")[1];
      this.login_id=new_arr;
      this.is_collect_book();
    } 
  },
  methods:{
    collect:function(){
      if(document.cookie){
        this.flag=true;
        //因为豆瓣接口访问次数有限，且电影数量太过庞大，所以把先收藏的电影的部分信息存到自己的数据库里，哪天把豆瓣接口换了删了这条就好
        this.find_book();
        this.collect_book();
      }else{
        this.$router.push("/user/user_login");
      }
    },
    nocollect:function(){
      this.flag=false;
      this.nocollect_book();
    },
    find_book:function(){
      Axios.get("http://localhost:3000/find_book",{
        params:{
          b_id:this.$route.params.id,
          b_name:this.bookDetails.title,
          b_summary:this.bookDetails.summary
        }
      }).then((res)=>{
        
      }).catch((error)=>{
          console.log(error);
      });
    },
    collect_book:function(){
      Axios.get("http://localhost:3000/collect_book",{
        params:{
          u_id:this.login_id,
          b_id:this.$route.params.id
        }
      }).then((res)=>{
          console.log(res.data);
      }).catch((error)=>{
          console.log(error);
      });
    },
    nocollect_book:function(){
      Axios.get("http://localhost:3000/nocollect_book",{
        params:{
          u_id:this.login_id,
          b_id:this.$route.params.id
        }
      }).then((res)=>{
          console.log(res.data);
      }).catch((error)=>{
          console.log(error);
      });
    },
    is_collect_book:function(){
      Axios.get("http://localhost:3000/is_collect_book",{
        params:{
          u_id:this.login_id,
          b_id:this.$route.params.id
        }
      }).then((res)=>{
          if(res.data==1){
            this.flag=true;
          }else{
            this.flag=false;
          }
          console.log(res.data+"aaaaaa");
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
  .book-details{
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
