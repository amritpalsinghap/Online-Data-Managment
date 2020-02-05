<template>
  <div>
    <b-card-group class="profileSection rounded-lg">
      <b-card id="box">
        <b-card id="subbox1">1 of 1</b-card>
      </b-card>
      <b-card id="box2">
        <b-card id="subbox2">1 of 2</b-card>
        <b-card id="subbox3">2 of 2</b-card>
      </b-card>
    </b-card-group>
  </div>
</template>
<script>
export default {};
</script>
<style lang="scss">
.profileSection {
  padding: 20px 50px;
}
#box {
  background-color: rgb(202, 214, 248);
  padding: 20px 20px;
}
#box2 {
  background-color: rgb(202, 214, 248);
  padding: 20px 20px;
}
#subbox1 {
  background-color: rgb(147, 176, 255);
}
#subbox2 {
  background-color: rgb(147, 176, 255);
}
#subbox3 {
  background-color: rgb(147, 176, 255);
}
</style>
