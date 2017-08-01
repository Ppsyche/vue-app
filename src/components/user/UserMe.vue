<template>
  <div class="user-set">
    <common-header>
      <button slot="btn" @click="up">{{$store.state.nav}}</button>
    </common-header>
    <div class="nav-list">
      <div>
        <p class="hight">
          头像
          <span class="gt">&gt;</span>
          <span  class="gt"><img src="../../assets/img/user.jpeg" alt=""></span>
        </p>
      </div>
      <div>
        <router-link to="/user/user_me/user_name" tag="p">昵称：{{ user_all.name }}<span class="gt">&gt;</span></router-link>
        <router-link to="/user/user_me/user_sex" tag="p">性别：
          <span v-if="user_all.sex==1">女</span>
          <span v-else-if="user_all.sex==2">男</span>
          <span v-else>未知</span>
          <span class="gt">&gt;</span>
        </router-link>
        <router-link to="/user/user_me/user_email" tag="p">邮箱：
          <span v-if="user_all.email">{{ user_all.email }}</span>
          <span v-else>未知</span>
          <span class="gt">&gt;</span>
        </router-link>
        <p>生日：4月25日<span class="gt">&gt;</span></p>
        <p>年龄：24<span class="gt">&gt;</span></p>
        <p>星座：射手座<span class="gt">&gt;</span></p>
      </div>  
      <div>
        <p>喜欢的电影/书籍类型<span class="gt">&gt;</span></p>
        <p>喜欢的阅读方式<span class="gt">&gt;</span></p>
        <p>其他的娱乐方式<span class="gt">&gt;</span></p>
      </div>
      <div>
        <p>账户安全<span class="gt">&gt;</span></p>
      </div>
        

    </div>

  </div>

</template>

<script>
  import Axios from 'axios'
  import CommonHeader from '../common/CommonHeader'
  import SlidingBlock from './SlidingBlock'
export default {
  data() {
    return{
      login_id:0,
      user_all:{}
    }
  },
  components:{
    CommonHeader,
    SlidingBlock
  },
  mounted(){
    this.$store.dispatch('changeTitle',['me','#439865','<'],false);
    if(document.cookie){
      this.flag=true;
      var arr=document.cookie.split(";")[1];
      var new_arr=arr.split("=")[1];
      this.login_id=new_arr;
      this.user_by_id();
    }else{
      this.flag=false;
    }
  },
  methods:{
    up:function(){
      this.$router.push("/user");
    },
    user_by_id:function(){
      Axios.get("http://localhost:3000/user_by_id",{
        params:{
          id:this.login_id
        }
      }).then((res)=>{
        // console.log(res.data);
        this.user_all=JSON.parse(res.data);
        // console.log(JSON.parse(res.data));
      }).catch((error)=>{
          console.log(error);
      });
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
  }
  .nav-list div{
    margin-top: .3rem;
  }
  .nav-list p{
    padding: .3rem;
    background: #fff;
    border-bottom: 1px solid #ccc;
    height: .3rem;
    line-height: .3rem;
  }
  .nav-list p.hight{
    height: 1rem;
    line-height: 1rem;
  }
  .nav-list p span.gt{
    float: right;
    font-weight: bolder;
  }
  .nav-list p span.num{
    float: right;
    font-weight: 400;
  }
  .nav-list p span img{
    width: 1rem;
    height: 1rem;
    margin-right: .2rem;
    border-radius: .5rem;
  }


</style>
