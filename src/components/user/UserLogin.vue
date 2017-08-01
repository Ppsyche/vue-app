<template>
	<div class="login">
		<common-header>
			<!-- <button slot="btn" @click="up">{{$store.state.nav}}</button> -->
		</common-header>
		<div class="logo">
			<img src="../../assets/img/user.jpeg" alt="">
			<p>豆瓣看看</p>
		</div>
		<p class="show">
			<span v-if="flag==1">手机号不能为空</span>
			<span v-else-if="flag==2">密码不能为空</span>
			<span v-else-if="flag==3">密码错误</span>
			<span v-else-if="flag==4">登录成功</span>
		</p>
		<div class="form">
			<div class="tel">
				<span>手机号：</span><input type="text" name="tel" placeholder="请输入手机号" v-model="tel">
			</div>
			<div class="psd">
				<span>密  码：</span><input type="password" name="psd"  placeholder="请输入密码" v-model="psd">
			</div>
			
			<!-- <input value="登录" class="button" type="submit" /> -->
			<button class="button" @click="check">登录</button>
		</div>
		<div class="other">
			<a href="javascript:;">忘记密码</a>
			<router-link to="/user/user_reg">注册</router-link>
		</div>
	</div>
</template>
<script>

import Axios from 'axios'
import CommonHeader from '../common/CommonHeader'
export default {
  	data() {
    	return {
    		tel:"",
    		psd:"",
    		flag:0
	    }
  	},
  	components:{
  		CommonHeader,
  	},
  	mounted(){
  		if(document.cookie){
  			this.$router.push("/user");
  		}
  		this.$store.dispatch('changeTitle',['login','#439865','<'],false);
  	},
 	methods:{
 		// up:function(){
 		//   this.$router.push("/user");
 		// },
      	check:function () {
      		var tel=this.tel;
      		var psd=this.psd;
      		if(tel==""){
      			this.flag=1;
      		}else if(psd==""){
      			this.flag=2;
      		}else{
      			this.login_user();
      		}
      		
      	},
      	login_user:function () {
      		var tel=this.tel;
      		var psd=this.psd;
      		Axios.get('http://localhost:3000/login_user',{
      			params:{
      				tel:"'"+tel+"'",
      				psd:"'"+psd+"'"
      			}
      		}).then((res)=>{
      			console.log(res.data);
				if(res.data.body==-1){
					this.flag=3;
					console.log(res.data);
				}else{
					console.log(res.data);
					this.flag=4;
					document.cookie="logined="+res.data.body;
					document.cookie="login_id="+res.data.body;
					// this.$router.push("/user");
					history.go(-1);
				}
			}).catch((error)=>{
			    console.log(error);
			});
      	},
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
		/*margin-bottom: .6rem;*/
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
	.show{
		width: 5rem;
		height: .4rem;
		margin: 0 auto;
		padding: .1rem .9rem;
		color: #ec4a4a;
	}
	.form div{
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
	.form div span{
		display: inline-block;
		width: 1rem;
	}
	.form div input{
		display: inline-block;
		border: 0;
		background: #76cb98;
		color: #dcfffe;
		width: 3.4rem;
		outline: none;
	}
	.form div input::-webkit-input-placeholder {
		color:#98edba;
	}
	.form div input:-moz-placeholder {
		color:#98edba;
	}
	.form div input::-moz-placeholder {
		color:#98edba;
	}
	.form div input:-ms-input-placeholder {
		color:#98edba;
	}
	/*.form input{
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
	.form .button{
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
	.other a{
		color: #dcfffe;
		float: right;
		margin-left: .3rem;
	}

</style>
