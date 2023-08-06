import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}

import * as Vue from "vue";

// TODO: thisについて調べる
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
}).mount('#app_1');

// リンク切れしてる
Vue.createApp({
  data() {
    return { path: 'https://www.web-deli.com/image/linkbanner_1.gif' };
  },
  methods: {
    // 画像にマウスポインタが乗った時
    onmouseenter() {
      this.path = 'https://www.web-deli.com/image/home_chara.gif';
    },
    // 画像からマウスポインターが外れた時
    onmouseleave() {
      this.path = 'https://www.web-deli.com/image/linkbanner_1.gif';
    }
  }
}).mount('#app_2');

// マッピングをファイル名で行なっているわけではない
// マッピングの仕組みを調べて、構造を把握するところまでやりたい