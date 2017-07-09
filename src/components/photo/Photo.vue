<template>
  <div class="photo">
    <common-header></common-header>
    <ul class="photo-box">
      <li v-for="(photo,index) in $store.state.photoList">
        <router-link :to="'/photo/photo_detail/'+index"><img :src="photo.src" alt=""></router-link>
      </li>
    </ul>
    <common-footer></common-footer>
  </div>
</template>

<script>

  import CommonHeader from '../common/CommonHeader'
  import CommonFooter from '../common/CommonFooter'
  import Axios from 'axios'

export default {
  data() {
    return {
    }
  },
  components:{
    CommonHeader,
    CommonFooter,
  },
  mounted(){
    this.$store.dispatch('changeTitle',['photo','rgb(63, 81, 181)','<']);

    Axios.get('static/photo-data.json').then((res)=>{
        this.$store.dispatch('photoList',res.data.photoData);
    });
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .photo-box{
    margin:1rem 0;
    overflow: hidden;
  }
  .photo-box li{
    width: 50%;
    float: left;
  }
  .photo-box li img{
    width: 100%;
    height: 100%;
  }

</style>
