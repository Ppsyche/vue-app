<template>
  <div class="collect">
    <common-header>
      <button slot="btn" @click="up">{{$store.state.nav}}</button>
    </common-header>
    <user-collect-nav></user-collect-nav>
    <router-view></router-view>
  </div>
</template>

<script>

  import CommonHeader from '../common/CommonHeader'
  import UserCollectNav from './UserCollectNav'

export default {
  data() {
    return {
      // login_id:0
    }
  },
  components:{
    CommonHeader,
    UserCollectNav,
  },
  mounted(){
    if(document.cookie){
      this.$store.dispatch('changeTitle',['user','#439865','<'],true);
      // var arr=document.cookie.split(";")[1];
      // var new_arr=arr.split("=")[1];
      // this.login_id=new_arr;
    }else{
      this.$router.push("/user/user_login");
    }
  },
  methods:{
    up:function(){
        this.$router.push("/user");
    },
  }

  
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";


</style>
