<template>
  <div class="photo">
    aaaaa
      <comp-b :msg="msg" :title="title"></comp-b>
      <comp-c @changeMsg="bb"></comp-c>
  </div>
</template>

<script>
  // npm install vuex --save
  import CompB from './CompB'
  import CompC from './CompC'

export default {

  data() {
    return {
        msg:'bbb',
      title:'book'
    }
  },
  components:{
    CompB,
    CompC
  },
  methods:{
      bb(c){
          this.msg = c;
      }
  }

}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>



</style>
