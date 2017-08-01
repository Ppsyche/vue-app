<template>
	<div class="login">
		<common-header></common-header>
		<div class="logo">
			<img src="../../assets/img/user.jpeg" alt="">
			<p>豆瓣看看</p>
		</div>
		<p class="show">
			<span v-if="flag==1">用户名不能为空</span>
			<span v-else-if="flag==2">手机号不能为空</span>
			<span v-else-if="flag==3">密码不能为空</span>
			<span v-else-if="flag==10">用户名只能由3-15位的数字和字母组成</span>
			<span v-else-if="flag==4">请输入正确的手机号</span>
			<span v-else-if="flag==5">密码只能由6-20位的数字和字母组成</span>
			<span v-else-if="flag==6">手机号码已存在</span>
			<span v-else-if="flag==7">注册成功</span>
			<span v-else-if="flag==8">注册失败</span>		
		</p>
		<div class="form">
			<div class="name">
				<span>用户名：</span><input type="text" name="name" placeholder="请输入用户名" v-model="name">
			</div>
			<div class="tel">
				<span>手机号：</span><input type="text" name="tel" placeholder="请输入手机号" v-model="tel">
			</div>
			<div class="psd">
				<span>密  码：</span><input type="password" name="psd"  placeholder="请输入6-20位密码(数字或字母)" v-model="psd">
			</div>
			<!-- <div class="rpsd">
				<span>确认密码：</span><input type="password" name="rpsd"  placeholder="请输入确认密码" v-model="rpsd">
			</div> -->
			
			<!-- <input value="注册" class="button" type="submit" /> -->
			<button class="button" @click="check">注册</button>
		</div>
		<div class="other">
			<router-link to="/user/user_login">登录</router-link>
			<span>已经有账号了?</span>
		</div>
	</div>
</template>
<script>

import Axios from 'axios'
import CommonHeader from '../common/CommonHeader'
export default {
  	data() {
    	return {
    		name:"",
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
  		this.$store.dispatch('changeTitle',['reg','#439865','<'],false);
  	},
  	methods:{
		check:function () {
			var name=this.name;
			var tel=this.tel;
			var psd=this.psd;
			var regnm = /^[a-zA-Z0-9]{3,15}$/;
			var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
			// var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,30}');
			var regex = /^[a-zA-Z0-9]{6,20}$/;
			// console.log(name);
			// console.log(tel);
			// console.log(psd);
			// console.log(myreg.test(tel));
			// console.log(regex.test(psd));
			if(name==""){
				this.flag=1;
			}else if(tel==""){
				this.flag=2;
			}else if(psd==""){
				this.flag=3;
			}else if(!regnm.test(name)){
				this.flag=10;//后补的，只能是10了TT
			}else if(!myreg.test(tel)){
				this.flag=4;
			}else if(!regex.test(psd)){
				this.flag=5;
			}else{
				this.insert_user();
			}
		},
		insert_user:function () {
			var name=this.name;
			var tel=this.tel;
			var psd=this.psd;
			Axios.get('http://localhost:3000/insert_user',{
				params:{
					name:name,
					tel:tel,
					psd:psd
				}
			}).then((res)=>{
				if(res.data==7){
					this.$router.push("/user/user_login");
				}else{
					this.flag=res.data;
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
	.other a,.other span{
		color: #dcfffe;
		float: right;
		margin-left: .1rem;
	}
	.other span{
		color: #333;
	}

</style>
