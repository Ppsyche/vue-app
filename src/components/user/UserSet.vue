<template>
  <div class="user-set">
    <common-header></common-header>
    <div class="nav-list">
        <h5>推荐设置</h5>
        <p>电影更新提醒
          <sliding-block :isshow="false"></sliding-block>
        </p>
        <p>电影推荐提醒
          <sliding-block :isshow="true"></sliding-block>
        </p>
        <h5>下载设置</h5>
        <p>允许移动网络下下载
          <sliding-block :isshow="false"></sliding-block>
        </p>
        <p>网络环境提示
          <sliding-block :isshow="true"></sliding-block>
        </p>
        <p>wifi下自动升级
          <sliding-block :isshow="true"></sliding-block>
        </p>
        <h5>vip连续包月管理</h5>
        <p>阅读记录<span class="num">未开启&nbsp;&gt;</span></p>
        <h5>其他设置</h5>
        <p>清除缓存<span class="num">37.36MB</span></p>
        <p>检查版本更新<span class="num">版本号：3.3.3</span></p>
        <p>关于我<span>&gt;</span></p>
    </div>
    <div class="exit">
      <router-link to="/user" tag="button">退出登录</router-link>
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
    this.$store.dispatch('changeTitle',['设置','#439865','<'],false);
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
    
    /*padding: .3rem;*/
    margin-bottom: .6rem;
  }
  .nav-list p,.nav-list h5{
    padding: .3rem;
  }
  .nav-list p{
    background: #fff;
    border-bottom: 1px solid #ccc;
    height: .3rem;
    line-height: .3rem;
  }
  .nav-list h5{
    font-size: 1.2em;
    /*font-weight: bolder;*/
    height: .2rem;
    line-height: .2rem;
  }
  .nav-list p span{
    float: right;
    font-weight: bolder;
  }
  .nav-list p span.num{
    float: right;
    font-weight: 400;
  }
  
  .exit button{
    /*margin: 1rem;*/
    width: 100%;
    height: .7rem;
    font-size: 1.2em;
    background: #fff;
    color:#ef5e5e;
    border: none;
  }

</style>
