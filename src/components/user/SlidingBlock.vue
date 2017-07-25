<template>
	<span class="sliding" :class='{"show":isshow}' @click="toggle">
		<span class="circle"></span>
	</span>
</template>
<script>
export default{
	props:['isshow'],
	data(){
		return{
			// isshow:false
		}
	},
	methods:{
      toggle:function(){
        this.isshow=!this.isshow;
      }
  },
}
</script>

<style scoped>
	.sliding{
	  width: .9rem;
	  height: .4rem;
	  border-radius: .2rem;  
	  background: #ccc;
	  border: 1px solid #ccc;
	}
	.sliding.show{
	  background: #4f7;
	  border: 1px solid #4f7;
	}
	.sliding.show .circle{
	  float: right;
	}
/*	.sliding.hide{
	  background: #ccc;
	  border: 1px solid #ccc;
	}
	.sliding.hide .circle{
	  float: left;
	}*/
	.sliding .circle{
	  width: .4rem;
	  height: .4rem;
	  background: #fff;
	  border-radius: .2rem;
	  float: left;
	}
</style>