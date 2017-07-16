<template>
  <div class="movie">
    <common-header>
      <div class="search" slot="h2">
        <select name="" id="select" v-model="go1">
          <option value="movie">电影</option>
          <option value="book">书籍</option>
        </select><input type="text" class="input" id="input" @focus="focus" @blur="blur" v-model="go2"></input>
      </div>
      <router-link slot="icon" :to="'/search/search_'+go1+'/'+go2" tag="button" class="btn">
      <i class="icon iconfont big">&#xe6d1;</i></router-link>
    </common-header>
    <router-view></router-view>
  </div>

</template>

<script>

  import CommonHeader from '../common/CommonHeader'
export default {
  data() {
    return {
      go1:"movie",
      go2:"请输入要查询的名称"
    }
  },
  components:{
    CommonHeader,
  },
  mounted(){
    this.$store.dispatch('changeTitle',['search','rgb(0, 150, 136)','<',true]);
  },
  methods:{
      focus:function(){
        var ipt= document.getElementById('input'); 
        if(ipt.value=="请输入要查询的名称"){
          ipt.value="";
          ipt.style.color="#000";
        } 
      },
      blur:function(){
        var ipt= document.getElementById('input');
        if(ipt.value==""){
            ipt.value="请输入要查询的名称";
            ipt.style.color="#aaa";
        }
      }
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  .search{
    height: .6rem;
    padding: .2rem;
    width: 5.5rem;
    position: relative;
  }
  .search select{
    border: 0;
    height: 100%;
    width: 1rem;
    border-radius: 5px 0 0 5px;
  }
  .search input{
    margin: 0;
    height: 100%;
    width: 3rem;
    padding: 0;
    border-radius: 0 8px 8px 0;
/*    position: relative;
    top: -0.02rem;*/
    border: 0;
    border-left: 1px;
    color: #aaa;
  }
  .btn{
    color: #fff;
    width: 1rem;
    line-height: 1rem;
    text-align: center;
  }

</style>
