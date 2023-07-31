import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}

import * as Vue from "vue";

const App = Vue.createApp({
    data(){
        return {
            text: 'Hello Vue'
        }
    },
})

App.mount("#app");
// マッピングをファイル名で行なっているわけではない
// マッピングの仕組みを調べて、構造を把握するところまでやりたい