<template>
  <div class="user-set">
    <common-header></common-header>
    <div class="nav-list">
        <h5>推荐设置</h5>
        <p>电影更新提醒
          <span class="siding" :class='{"show":isshow1,"hide":!isshow1}' @click="toggle1"><span class="circle" ></span></span>
        </p>
        <p>电影推荐提醒
          <span class="siding" :class='{"show":isshow2,"hide":!isshow2}' @click="toggle2"><span class="circle" ></span></span>
        </p>
        <h5>下载设置</h5>
        <p>允许移动网络下下载
          <span class="siding" :class='{"show":isshow3,"hide":!isshow3}' @click="toggle3"><span class="circle" ></span></span>
        </p>
        <p>网络环境提示
          <span class="siding" :class='{"show":isshow4,"hide":!isshow4}' @click="toggle4"><span class="circle" ></span></span>
        </p>
        <p>wifi下自动升级
          <span class="siding" :class='{"show":isshow5,"hide":!isshow5}' @click="toggle5"><span class="circle" ></span></span>
        </p>
        <h5>vip连续包月管理</h5>
        <p>阅读记录<span class="num">未开启&nbsp;&gt;</span></p>
        <h5>其他设置</h5>
        <p>清除缓存<span class="num">37.36MB</span></p>
        <p>检查版本更新<span class="num">版本号：3.3.3</span></p>
        <p>关于我<span>&gt;</span></p>
    </div>
    <div class="exit">
      <button>退出登录</button>
    </div>
  </div>

</template>

<script>

  import CommonHeader from '../common/CommonHeader'
export default {
  data() {
    return{
      isshow1:false,
      isshow2:true,
      isshow3:false,
      isshow4:true,
      isshow5:true,
    }
  },
  components:{
    CommonHeader
  },
  mounted(){
    this.$store.dispatch('changeTitle',['设置','#439865','<'],false);
  },
  methods:{
      toggle1:function(){
        this.isshow1=!this.isshow1;
      },
      toggle2:function(){
        this.isshow2=!this.isshow2;
      },
      toggle3:function(){
        this.isshow3=!this.isshow3;
      },
      toggle4:function(){
        this.isshow4=!this.isshow4;
      },
      toggle5:function(){
        this.isshow5=!this.isshow5;
      }
  },
  
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .user-set{
    background: #eee;
  }
  .nav-list{
    margin-top: 1rem;
    
    /*padding: .3rem;*/
    margin-bottom: .6rem;
  }
  .nav-list p,.nav-list h5{
    padding: .3rem;
  }
  .nav-list p{
    background: #fff;
    border-bottom: 1px solid #ccc;
    height: .3rem;
    line-height: .3rem;
  }
  .nav-list h5{
    font-size: 1.2em;
    /*font-weight: bolder;*/
    height: .2rem;
    line-height: .2rem;
  }
  .nav-list p span{
    float: right;
    font-weight: bolder;
  }
  .nav-list p span.num{
    float: right;
    font-weight: 400;
  }
  .nav-list p span.siding{
    width: .9rem;
    height: .4rem;
    border-radius: .2rem;   
  }
  .nav-list p span.siding.show{
    background: #4f7;
    border: 1px solid #4f7;
  }
  .nav-list p span.siding.show .circle{
    float: right;
  }
  .nav-list p span.siding.hide{
    background: #ccc;
    border: 1px solid #ccc;
  }
  .nav-list p span.siding.hide .circle{
    float: left;
  }
  .nav-list p span.siding .circle{
    width: .4rem;
    height: .4rem;
    background: #fff;
    border-radius: .2rem;
  }
  .exit button{
    /*margin: 1rem;*/
    width: 100%;
    height: .7rem;
    font-size: 1.2em;
    background: #fff;
    color:#ef5e5e;
    border: none;
  }

</style>
