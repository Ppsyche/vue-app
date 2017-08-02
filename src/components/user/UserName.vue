<template>
  <div class="user-name">
    <common-header>
      <button slot="btn" @click="up">{{$store.state.nav}}</button>
      <button slot="icon" to="/user/user_me" class="btn" @click="change_name">
      保存</button>
    </common-header>
    <div class="ipt-box">
      <input type="text" class="name" v-model="name">
      <p class="text">可免费修改用户昵称一次，以后每次修改消耗9点券</p>
    </div>
  </div>
</template>

<script>

  import Axios from 'axios'
  import CommonHeader from '../common/CommonHeader'

export default {
  data() {
    return{
      name:""
    }
  },
  components:{
    CommonHeader,

  },
  mounted(){
    this.$store.dispatch('changeTitle',['Name','#439865','<'],false);
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
        this.name=this.user_all.name;
        // console.log(JSON.parse(res.data));
      }).catch((error)=>{
          console.log(error);
      });
    },
    change_name:function(){
      Axios.get("http://localhost:3000/change_name",{
        params:{
          id:this.login_id,
          name:"'"+this.name+"'"
          // name:this.name
        }
      }).then((res)=>{
        if(res.data==1){
          console.log("修改成功");
          this.$router.push("/user/user_me");
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
  .user-name{
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
  .ipt-box .name{
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
    line-height: 1.5rem;
    width: 100%;
    margin-top: -2rem;
  }
  

</style>
