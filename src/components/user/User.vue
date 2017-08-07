<template>
  <div class="movie">
    <common-header>
      <button slot="btn" @click="up">{{$store.state.nav}}</button>
      <router-link slot="icon" to="/user/user_set" tag="button" class="btn">
      设置</router-link>
    </common-header>
    <div class="top1" v-show="this.flag">
      <router-link to="/user/user_me"><img src="../../assets/img/user.jpeg" alt=""></router-link>   
      <div class="name-box">
        <p class="name">{{ user_all.name }}</p>
        <p class="deng">LV : {{ user_all.lv }}</p>
      </div>
      <p class="sign-in">签到</p>
    </div>
    <div class="top2" v-show="!this.flag">
      <router-link to="/user/user_login">
        <img src="../../assets/img/user.jpeg" alt="">  
        <p class="login">
          登录查看更多
        </p>
      </router-link> 
    </div>
    <div class="roll">
      <router-link to="/user/collect" tag="div" class="one">
        <p>{{collect_num}}</p>
        <p>收藏</p>
      </router-link>
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

  import Axios from 'axios'
  import CommonHeader from '../common/CommonHeader'
  import CommonFooter from '../common/CommonFooter'
export default {
  data() {
    return {
      flag:false,
      login_id:0,
      user:{},
      user_all:{},
      collect_num:0
    }
  },
  components:{
    CommonHeader,
    CommonFooter
  },
  mounted(){
    this.$store.dispatch('changeTitle',['user','#439865','<'],true);
    // console.log(document.cookie);
    if(document.cookie){
      this.flag=true;
      var arr=document.cookie.split(";")[1];
      var new_arr=arr.split("=")[1];
      this.login_id=new_arr;
      this.user_and_collect();
    }else{
      this.flag=false;
    }
    // var _this=this;
    
  },
  methods:{
    up:function(){
      this.$router.push("/");
    },
    user_and_collect:function(){
      Axios.get("http://localhost:3000/user_and_collect",{
        params:{
          id:this.login_id
        }
      }).then((res)=>{
        // console.log(res.data);
        this.user=JSON.parse(res.data);
        this.user_all=this.user.user;
        this.collect_num=parseInt(this.user.movie_num)
                        +parseInt(this.user.book_num)
                        +parseInt(this.user.photo_num);
        // console.log(JSON.parse(res.data));
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
  .btn{
    color: #fff;
    width: 1rem;
    line-height: 1rem;
    text-align: center;
    /*float: right;*/
    position: absolute;
    right: 0;
  }
  .top1,.top2{
    margin-top: 1rem;
    background: #439865;
  }
  .top1{   
    padding: .1rem .3rem;
    height: 1.7rem;
  }
  .top1 img{
    width: 1.3rem;
    height:1.3rem;
    border-radius: 50%;
    border: 3px solid #ccc;
    float: left;
  }
  .top1 .name-box{
    float: left;
    margin: .2rem 0 0 .2rem;
  }
  .top1 .name-box p{
    color: #fff;
  }
  .top1 .name{
    font-size: 1.3em;
    margin-bottom: .1rem;
  }
  .top1 .sign-in{
    background: orange;
    color: #fff;
    float: right;
    width: 1rem;
    height: .4rem;
    text-align: center;
    border-radius: .2rem;
    margin: .5rem .2rem 0 0;
  }
  .top2{   
    padding: .2rem .3rem;
    height: 2.2rem;
    text-align: center;
  }
  .top2 img{
    width: 1.5rem;
    height:1.5rem;
    border-radius: 50%;
    border: 3px solid #ccc;
    margin: 0 auto;
  }
  .top2 p{
    color: #fff;
    font-size: 1.1em;
    margin-top: .1rem;
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
