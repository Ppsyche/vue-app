<template>
	<div class="login">
		<common-header></common-header>
		<div class="logo">
			<img src="../../assets/img/user.jpeg" alt="">
			<p>豆瓣看看</p>
		</div>
		<form action="">
			<div class="name">
				<span>用户名：</span><input type="text" name="name" >
			</div>
			<div class="tel">
				<span>手机号：</span><input type="text" name="tel" >
			</div>
			<div class="psd">
				<span>密  码：</span><input type="password" name="psd">
			</div>
			
			<input value="注册" class="button" type="submit" />
		</form>
		<div class="other">
			<router-link to="/user/user_login">登录</router-link>
			<span>已经有账号了?</span>
		</div>
	</div>
</template>
<script>

import CommonHeader from '../common/CommonHeader'
export default {
  data() {
    return {
    	// tel:"请输入手机号",
    	// psd:"请输入密码",
    }
  },
  components:{
  	CommonHeader,
  },
  mounted(){
  	this.$store.dispatch('changeTitle',['reg','#439865','<'],false);
  },
  methods:{
      
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  	@import "../../assets/css/reset.css";
  	.login{
  		height: 100vh;
  		background-color: #439865;
  	}
	.logo{
		padding-top: 1rem;
		width: 100%;
		text-align: center;
		margin-bottom: .6rem;
	}
	.logo img{
		width: 1.5rem;
		height: 1.5rem;
		border-radius: 20%;
		box-shadow: 0 5px 5px rgba(0,0,0,.3);
		margin: 1rem 2.5rem .2rem;	
	}
	.logo p{
		font-size: 1.3em;
		color: #fff;
	}
	form div{
		display: block;
		width: 4.4rem;
		height: .4rem;
		margin: 0 auto .3rem;
		background: #76cb98;
		border: 0;
		border-radius: .25rem;
		line-height: .5rem;
		padding: .1rem .3rem;
		color: #dcfffe;
	}
	form div span{
		display: inline-block;
		width: 1rem;
	}
	form div input{
		display: inline-block;
		border: 0;
		background: #76cb98;
		color: #dcfffe;
		width: 3.4rem;
		outline: none;
	}
	/*form input{
		display: block;
		width: 4.4rem;
		height: .4rem;
		margin: 0 auto .3rem;
		background: #76cb98;
		border: 0;
		border-radius: .25rem;
		line-height: .5rem;
		padding: .1rem .3rem;
		color: #dcfffe;
	}*/
	form .button{
		display: block;
		width: 5rem;
		height: .6rem;
		background: #fff;
		margin: 0 auto .3rem;
		border: 0;
		color: #439865;
		font-weight: bolder;
		border-radius: .25rem;
		line-height: .5rem;
	}
	.other{
		width: 4rem;
		margin: .3rem auto;
	}
	.other a,.other span{
		color: #dcfffe;
		float: right;
		margin-left: .1rem;
	}
	.other span{
		color: #333;
	}

</style>
