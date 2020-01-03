<template>
    <div style="position: relative">
<base-nav type="default" effect="dark" expand>
    <a class="navbar-brand" href="#">Default Color</a>

    <div class="row" slot="content-header" slot-scope="{closeMenu}">
        <div class="col-6 collapse-brand">
            <a href="https://demos.creative-tim.com/vue-argon-design-system/documentation/">
                <img src="https://demos.creative-tim.com/vue-argon-design-system/img/brand/blue.png">
            </a>
        </div>
        <div class="col-6 collapse-close">
            <close-button @click="closeMenu"></close-button>
        </div>
    </div>

    <ul class="navbar-nav ml-lg-auto">
        <li class="nav-item">
            <router-link to="/login">
                Login
            </router-link>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link-icon" href="#">
                Profile
            </a>
        </li>
        
        <!--DropDown links(may be use later todo)
             <base-dropdown tag="li" title="Settings">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Separated link</a>
        </base-dropdown> -->
    </ul>
 </base-nav>
</div>
</template>
<script>
export default {
    name:navbar,
}
</script>