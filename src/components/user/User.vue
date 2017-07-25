<template>
  <div class="movie">
    <common-header>
      <router-link slot="icon" to="/user/user_set" tag="button" class="btn">
      设置</router-link>
    </common-header>
    <div class="top">
      <router-link to="/user/user_me"><img src="../../assets/img/user.jpeg" alt=""></router-link>
      
      <div class="name-box">
        <p class="name">用户名</p>
        <p class="deng">LV : 5</p>
      </div>
      <p class="sign-in">签到</p>
    </div>
    <div class="roll">
      <div class="one">
        <p>0</p>
        <p>收藏</p>
      </div>
      <div class="one">
        <p>0</p>
        <p>阅读卷</p>
      </div>
      <div class="one">
        <p>0</p>
        <p>用户币</p>
      </div>
    </div>
    <div class="nav-list">
      <div>
        <p>我的VIP<span>&gt;</span></p>
        <p>我的用户币<span>&gt;</span></p>
      </div>
      <div>
        <p>消息通知<span>&gt;</span></p>
        <!-- <p>消息通知(可用)<span>&gt;</span></p> -->
        <p>我的订阅<span>&gt;</span></p>
        <p>我的回复<span>&gt;</span></p>
        <p>阅读记录<span>&gt;</span></p>
      </div>
      <div>
        <p>我的反馈<span>&gt;</span></p>
        <p>我的商城<span>&gt;</span></p>
        <p>邀请好友<span>&gt;</span></p>
      </div>
      <div>
        <p>作者详情<span>&gt;</span></p>
      </div>
    </div>
    <common-footer></common-footer>
  </div>

</template>

<script>

  import CommonHeader from '../common/CommonHeader'
  import CommonFooter from '../common/CommonFooter'
export default {
  data() {
    return {
      
    }
  },
  components:{
    CommonHeader,
    CommonFooter
  },
  mounted(){
    this.$store.dispatch('changeTitle',['user','#439865','<'],true);
  },
  methods:{
      
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .btn{
    color: #fff;
    width: 1rem;
    line-height: 1rem;
    text-align: center;
    /*float: right;*/
    position: absolute;
    right: 0;
  }
  .top{
    margin-top: 1rem;
    background: #439865;
    padding: .1rem .3rem;
    height: 1.7rem;
  }
  .top img{
    width: 1.3rem;
    height:1.3rem;
    border-radius: 50%;
    border: 3px solid #ccc;
    float: left;
  }
  .top .name-box{
    float: left;
    margin: .2rem 0 0 .2rem;
  }
  .top .name-box p{
    color: #fff;
  }
  .top .name{
    font-size: 1.3em;
    margin-bottom: .1rem;
  }
  .top .sign-in{
    background: orange;
    color: #fff;
    float: right;
    width: 1rem;
    height: .4rem;
    text-align: center;
    border-radius: .2rem;
    margin: .5rem .2rem 0 0;
  }
  .roll{
    display: flex;
    border-bottom: 1px solid #ccc;
  }
  .roll div{
    flex:1;
    text-align: center;
    border-left: 1px solid #ccc;
    margin: .1rem 0;
  }
  .nav-list{
    background: #eee;
    padding: .3rem;
    margin-bottom: .6rem;
  }
  .nav-list>div{
    margin-bottom: .4rem;
  }
  .nav-list p{
    height: .3rem;
    line-height: .3rem;
    background: #fff;
    border-bottom: 1px solid #ccc;
    padding: .3rem;
  }
  .nav-list p span{
    float: right;
    font-weight: bolder;
  }
  /*.nav-list p span.num{
    float: right;
    font-weight: 400;
  }*/


</style>
