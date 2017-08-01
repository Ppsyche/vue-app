<template>
  <div class="user-email">
    <common-header>
      <button slot="btn" @click="up">{{$store.state.nav}}</button>
      <button slot="icon" to="/user/user_me" class="btn" @click="change_email">
      保存</button>
    </common-header>
    <div class="ipt-box">
      <input type="text" class="email" v-model="email">
      <p class="text">我懒得写正则了，这里可以随便填（づ￣3￣）づ╭❤～</p>
    </div>
  </div>
</template>

<script>

  import Axios from 'axios'
  import CommonHeader from '../common/CommonHeader'

export default {
  data() {
    return{
      email:""
    }
  },
  components:{
    CommonHeader,

  },
  mounted(){
    this.$store.dispatch('changeTitle',['email','#439865','<'],false);
    if(document.cookie){
      var arr=document.cookie.split(";")[1];
      var new_arr=arr.split("=")[1];
      this.login_id=new_arr;
      this.user_by_id();
    }
  },
  methods:{
    up:function(){
      this.$router.push("/user/user_me");
    },
    user_by_id:function(){
      Axios.get("http://localhost:3000/user_by_id",{
        params:{
          id:this.login_id
        }
      }).then((res)=>{
        // console.log(res.data);
        this.user_all=JSON.parse(res.data);
        this.email=this.user_all.email;
        // console.log(JSON.parse(res.data));
      }).catch((error)=>{
          console.log(error);
      });
    },
    change_email:function(){
      Axios.get("http://localhost:3000/change_email",{
        params:{
          id:this.login_id,
          email:"'"+this.email+"'"
          // email:this.email
        }
      }).then((res)=>{
        if(res.data==1){
          console.log("修改成功");
        }else{
          console.log("修改失败");
        } 
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
  .user-email{
    /*background: #eee;*/
  }
  .btn{
    position: absolute;
    right: 0;
  }
  .ipt-box{
    height: 1.5rem;
    width: 100%;
  }
  .ipt-box .email{
    width: 5rem;
    height:1rem;
    margin:2rem .74rem;
    border:1px solid gray;
    border-radius: 10px;
    text-indent: 20px;
    outline: none;
    font-size: 2em;
    color: gray;
  }
  .text{
    color: gray;
    height: 1.5rem;
    text-align: center;
    /*line-height: 1rem;*/
    width: 100%;
    margin-top: -1.5rem;
  }
  

</style>
