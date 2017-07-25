<template>
  <div class="user-set">
    <common-header></common-header>
    <div class="nav-list">
      <div>
        <p class="hight">
          头像
          <span>&gt;</span>
          <span><img src="../../assets/img/user.jpeg" alt=""></span>
        </p>
      </div>
      <div>
        <p>昵称：用户名<span>&gt;</span></p>
        <p>性别：保密<span>&gt;</span></p>
        <p>生日：4月25日<span>&gt;</span></p>
        <p>年龄：24<span>&gt;</span></p>
        <p>星座：射手座<span>&gt;</span></p>
      </div>  
      <div>
        <p>喜欢的电影/书籍类型<span>&gt;</span></p>
        <p>喜欢的阅读方式<span>&gt;</span></p>
        <p>其他的娱乐方式<span>&gt;</span></p>
      </div>
      <div>
        <p>账户安全<span>&gt;</span></p>
      </div>
        

    </div>

  </div>

</template>

<script>

  import CommonHeader from '../common/CommonHeader'
  import SlidingBlock from './SlidingBlock'
export default {
  data() {
    return{

    }
  },
  components:{
    CommonHeader,
    SlidingBlock
  },
  mounted(){
    this.$store.dispatch('changeTitle',['账户管理','#439865','<'],false);
  },
  methods:{

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
  .nav-list p span{
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
