import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}

import * as Vue from "vue";

Vue.createApp({
  data() {
    return {
      message: ''
    };
  },
  methods: {
    // クリック時に現在日時を取得
    onclick() {
      this.message = new Date().toLocaleString();
    }
  }
}).mount('#app');

// マッピングをファイル名で行なっているわけではない
// マッピングの仕組みを調べて、構造を把握するところまでやりたい