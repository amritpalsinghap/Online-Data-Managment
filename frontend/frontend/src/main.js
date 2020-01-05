import Vue from "vue";
import App from "./App.vue";
import "./registerServiceWorker";
import router from "./router";
import store from "./store";
import BootStrapVue from "bootstrap-vue";
import "./custom.scss";

Vue.config.productionTip = false;
require("./components/global");
Vue.use(BootStrapVue);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
