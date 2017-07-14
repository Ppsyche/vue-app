<template>
  <div class="photo">
    <common-header></common-header>
    <ul class="photo-box">
      <li v-for="(photo,index) in $store.state.photoList">
        <router-link :to="'/photo/photo_detail/'+index"><img :src="photo.src" alt=""></router-link>
      </li>
    </ul>
    <div class="nothing">┐(￣ー￣)┌没有了┐(￣ー￣)┌</div>
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
      
    }
  },
  components:{
    CommonHeader,
    CommonFooter,
  },
  mounted(){
    this.$store.dispatch('changeTitle',['photo','rgb(63, 81, 181)','<',true]);

      Axios.get('static/photo-data.json').then((res)=>{
          this.$store.dispatch('photoList',res.data.photoData);
      });
    // window.load(function(){
      setTimeout(function(){
        var imgNum = 2//一行摆几张图
        var lineHight = new Array(imgNum);//每排的高度
        var minHeight = 0;//高度最小的是哪排
        var left = $('.photo-box li').outerWidth(true);
        $('.photo-box li').width($('.photo-box').width()/2-left);
        left = $('.photo-box li').outerWidth(true);
        lineHight.fill(0,0,imgNum);
        for (var i = 0; i < $(".photo-box li").length; i++){
          minHeight = 0;
          for(var j=1; j<lineHight.length; j++){
            minHeight = lineHight[minHeight]>lineHight[j]?j:minHeight;
          }
          $('.photo-box li').eq(i).css({
            "top":lineHight[minHeight],
            "left":left*minHeight
          });
          lineHight[minHeight] += $('.photo-box li').eq(i).outerHeight(true);
        }
        //计算ul高度
        var maxHeight = 0;
        for(var j=1; j<lineHight.length; j++){
          maxHeight = lineHight[maxHeight]>lineHight[j]?maxHeight:j;
        }
        $('.photo-box').height(lineHight[maxHeight]);
      },1000);
      

    // })
    
  },
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .photo-box{
    margin-top:1rem;
    /*overflow: hidden;*/
    position: relative;
    width: 100%;
    /*height: auto;*/
  }
  .photo-box li{
    /*width: 45%;*/
    /*float: left;*/
    width: 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 5px #ccc;
    position: absolute;
    margin: 2px;
  }
  .photo-box li img{
    width: 100%;
    height: 100%;
  }
  .nothing{
    margin-bottom: 1rem;
    text-align: center;
    line-height: 1rem;

  }
</style>



