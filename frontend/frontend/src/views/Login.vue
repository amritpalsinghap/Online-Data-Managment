<template>
  <div class="login-card">
    <b-card style="max-width: 20rem;" class="mb-2">
      <label class="sr-only" for="inline-form-input-username">Username</label>
      <b-form-input
        id="inline-form-input-username"
        placeholder="Username"
        v-model="userName"
      ></b-form-input>

      <b-form-input
        type="password"
        id="text-password"
        PLACEHOLDER="Password"
        v-model="password"
      ></b-form-input>

      <cstm-button
        _color="primary"
        :clickFunction="checkCredentials"
        bText="Login"
      ></cstm-button>
    </b-card>
  </div>
</template>
<script>
export default {
  name: "login",

  data() {
    return {
      userName: "",
      password: ""
    };
  },
  methods: {
    checkCredentials() {
      alert("Username: " + this.userName + "password: " + this.password);
    }
  }
};
</script>

<style scoped>
body {
  padding: 1rem;
}
.login-card {
  position: relative;
}
</style>
