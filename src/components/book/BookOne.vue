<template>
  <div class="book-one">
    <common-header></common-header>
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
        <p>定价：{{bookDetails.price}}元</p>
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
      bookDetails:[]
    }
  },
  components:{
    CommonHeader,
  },
  mounted(){
    // console.log(this.$route.params.id);
    this.$store.dispatch('changeTitle',['book','rgb(121, 85, 72)','<']);
    Axios.get(API_PROXY+'https://api.douban.com/v2/book/'+this.$route.params.id+'')
      .then((res)=>{
        // console.log(res.data);
        this.bookDetails = res.data;
    });
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
</style>
