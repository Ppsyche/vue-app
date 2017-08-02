<template>
  <div class="photo">
    <common-header>
      <button slot="btn" @click="up">{{$store.state.nav}}</button>
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
      src:""
    }
  },
  components:{
    CommonHeader,
  },
  mounted(){
    this.$store.dispatch('changeTitle',['photo','rgb(63, 81, 181)','<',false]);
    this.find_photo();
  },
  computed:{
    bgStyle(){
      return {
        background: "url('../../static/img/img"+this.id+".jpg') no-repeat center / contain #000"
        //这里只要用this.src页面就不跳转了，没明白为啥
        // background: "url('"+this.src+"') no-repeat center / contain #000"
      }
    }
  },
  methods:{
    up:function(){
      this.$router.push("/photo");
    },
    next(){
        this.id = (parseInt(this.id)+1)%58;
        if(this.id==0){this.id=1;}
        this.$router.push("/photo/photo_detail/"+this.id);
    },
    prev(){
        this.id = (parseInt(this.id)+57)%58;
        if(this.id==0){this.id=58;}
        this.$router.push("/photo/photo_detail/"+this.id);
    },
    find_photo(){
      Axios.get("http://localhost:3000/find_photo",{
        params:{
          p_id:this.id
        }
      }).then((res)=>{
        console.log(res.data);
        this.src=res.data;
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
  .photo-box{
    position: absolute;
    top:1rem;
    bottom: 0;
    width: 100%;
  }


</style>
