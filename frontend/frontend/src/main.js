import Vue from "vue";
import "./custom.scss";
import App from "./App.vue";
import "./registerServiceWorker";
import router from "./router";
import store from "./store";
import BootStrapVue from "bootstrap-vue";

Vue.config.productionTip = false;
require("./components/global");
Vue.use(BootStrapVue);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
