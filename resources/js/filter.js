window.Vue = require('vue');
import moment from "moment";

Vue.filter('timeformat',function(arg){
    return moment(arg).format('LLL');
})