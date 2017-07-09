<template>
  <div class="photo">
      {{msg}},{{title}}
  </div>
</template>
<!--vuex 状态管理器-->
<script>


export default {
  props:['msg','title'],
  data() {
    return {

    }
  },
  components:{
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>



</style>
