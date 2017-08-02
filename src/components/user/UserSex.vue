<template>
  <div class="user-sex">
    <common-header>
      <button slot="btn" @click="up">{{$store.state.nav}}</button>
      <button slot="icon" to="/user/user_me" class="btn" @click="change_sex">
      保存</button>
    </common-header>
    <div class="sex-box">
      <div class="nv" @click="nv"></div>
      <div class="nan" @click="nan"></div>
      <!-- <img src="../../assets/img/sex.png" alt=""> -->
    </div>
  </div>
</template>

<script>

  import Axios from 'axios'
  import $ from 'jquery'
  import CommonHeader from '../common/CommonHeader'

export default {
  data() {
    return{
      sex:0,
    }
  },
  components:{
    CommonHeader,

  },
  mounted(){
    this.$store.dispatch('changeTitle',['Sex','#439865','<'],false);
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
    nv:function(){
      if(this.sex==1){
        $(".nv").removeClass("selected");
        this.sex=0;
      }else{
        $(".nan").removeClass("selected");
        $(".nv").addClass("selected");
        this.sex=1;
      }
    },
    nan:function(){
      if(this.sex==2){
        $(".nan").removeClass("selected");
        this.sex=0;
      }else{
        $(".nv").removeClass("selected");
        $(".nan").addClass("selected");
        this.sex=2;
      }
    },
    user_by_id:function(){
      Axios.get("http://localhost:3000/user_by_id",{
        params:{
          id:this.login_id
        }
      }).then((res)=>{
        // console.log(res.data);
        this.user_all=JSON.parse(res.data);
        this.sex=this.user_all.sex;
        if(this.sex==1){
          $(".nv").addClass("selected");
        }else if(this.sex==2){
          $(".nan").addClass("selected");
        }
        // console.log(JSON.parse(res.data));
      }).catch((error)=>{
          console.log(error);
      });
    },
    change_sex:function(){
      Axios.get("http://localhost:3000/change_sex",{
        params:{
          id:this.login_id,
          sex:"'"+this.sex+"'"
          // sex:this.sex
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
  .user-sex{
    /*background: #eee;*/
  }
  .btn{
    position: absolute;
    right: 0;
  }
  .sex-box{
    margin-top: 1.5rem;
    width: 6.5rem;
    height: 260px;
    position: relative;
  }
  .sex-box div{
    height: 240px;
    width: 110px;
    border-radius: 55px;
    position: absolute;
  }
  .sex-box .nan{
    background: #ddd url("../../assets/img/sex.png") no-repeat -120px;
    right: 1rem;
  }
  .sex-box .nv{
    background: #ddd url("../../assets/img/sex.png") no-repeat -15px;
    left: 1rem;
  } 
  .selected{
    top:-5px;
    border:5px solid rgb(229,239,194);
    box-shadow: 0 5px 5px rgba(0,0,0,.3);
  }

  

</style>
