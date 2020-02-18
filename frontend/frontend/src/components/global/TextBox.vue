<template>
  <div>
    <b-form-group
      label-cols="4"
      label-cols-lg="2"
      label-size="sm"
      :label="labelText"
      label-for="input-sm"
    >
      <b-form-input v-model="text" :placeholder="placeHolder"></b-form-input>
    </b-form-group>
  </div>
</template>
<script>
export default {
  data() {
    return {
      text: ""
    };
  },
  props: {
    placeHolder: {
      type: String,
      require: true,
      default: "Enter Here"
    },
     labelText: {
      type: String,
      require: true,
      default: "TODO"
    }
  }
};
</script>
