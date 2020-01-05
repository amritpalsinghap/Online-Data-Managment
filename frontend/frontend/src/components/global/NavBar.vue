<template>
  <div>
    <b-navbar type="dark" variant="primary">
      <b-navbar-brand to="/">
        <img src="../../../public/img/icons/logo.jpg" alt="OnlineManagement" />
      </b-navbar-brand>
      <b-navbar-nav class="ml-auto">
        <b-nav-item to="/">Home</b-nav-item>
        <b-nav-item to="/about">About</b-nav-item>
        <b-nav-item to="/login">Login</b-nav-item>
        <b-nav-item to="/profile">Profile</b-nav-item>
        <!-- Navbar dropdowns -->
      </b-navbar-nav>
    </b-navbar>
  </div>
</template>
<script>
export default {
  name: "cstm-Navbar"
};
</script>
<style scoped>
img {
  height: 30px;
  width: 30px;
}
</style>
