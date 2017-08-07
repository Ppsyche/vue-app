<template>
  <div class="photo">
    <common-header>
      <button slot="btn" @click="up">{{$store.state.nav}}</button>
      <button slot="icon" class="btn" v-if="!this.flag" @click="collect">
        <i class="icon iconfont big">&#xe572;</i>  
      </button>
      <button slot="icon" class="btn" v-if="this.flag" @click="nocollect">
        <i class="icon iconfont big">&#xe630;</i>
      </button>
    </common-header>
    <v-touch @swipeleft="next" @swiperight="prev" class="photo-box" :style="bgStyle"></v-touch>
  </div>
</template>

<script>

  import Axios from 'axios'
  import CommonHeader from '../common/CommonHeader'

export default {
  data() {
    return {
      id:this.$route.params.id,
      src:"",
      login_id:0,
      flag:false
    }
  },
  components:{
    CommonHeader,
  },
  mounted(){
    this.$store.dispatch('changeTitle',['photo','rgb(63, 81, 181)','<',false]);
    this.refresh();
  },
  computed:{
    bgStyle(){
      return {
        // background: "url('../../static/img/img"+this.id+".jpg') no-repeat center / contain #000"
        background: "url('"+this.src+"') no-repeat center / contain #000"
      }
    }
  },
  methods:{
    up:function(){
      this.$router.push("/user/collect/collect_photo");
      // history.go(-1);
    },
    next(){     
    },
    prev(){      
    },
    find_photo(){
      Axios.get("http://localhost:3000/find_photo",{
        params:{
          p_id:this.id
        }
      }).then((res)=>{
        // console.log(res.data);
        this.src=res.data;
      }).catch((error)=>{
          console.log(error);
      });
    },
    collect:function(){
      if(document.cookie){
        this.flag=true;
        this.collect_photo();
      }else{
        this.$router.push("/user/user_login");
      }
    },
    nocollect:function(){
      this.flag=false;
      this.nocollect_photo();
    },
    collect_photo:function(){
      Axios.get("http://localhost:3000/collect_photo",{
        params:{
          u_id:this.login_id,
          p_id:this.$route.params.id
        }
      }).then((res)=>{
          console.log(res.data);
      }).catch((error)=>{
          console.log(error);
      });
    },
    nocollect_photo:function(){
      Axios.get("http://localhost:3000/nocollect_photo",{
        params:{
          u_id:this.login_id,
          p_id:this.id
        }
      }).then((res)=>{
          console.log(res.data);
      }).catch((error)=>{
          console.log(error);
      });
    },
    is_collect_photo:function(){
      Axios.get("http://localhost:3000/is_collect_photo",{
        params:{
          u_id:this.login_id,
          p_id:this.id
        }
      }).then((res)=>{
          if(res.data==1){
            this.flag=true;
          }else{
            this.flag=false;
          }
          // console.log(res.data);
      }).catch((error)=>{
          console.log(error);
      });
    },
    refresh:function(){
      this.find_photo();
      if(document.cookie){
        var arr=document.cookie.split(";")[1];
        var new_arr=arr.split("=")[1];
        this.login_id=new_arr;
        this.is_collect_photo();
      }
    }
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .photo-box{
    position: absolute;
    top:1rem;
    bottom: 0;
    width: 100%;
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
