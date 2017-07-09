<template>
  <div class="photo">
      <button @click="change">click</button>
  </div>
</template>

<script>


export default {
  data() {
    return {

    }
  },
  methods:{
      change(){
          this.$emit('changeMsg','cccccc');
      }
  }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>



</style>
