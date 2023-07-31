# Pin npm packages by running ./bin/importmap
# 参考:https://zenn.dev/takeyuwebinc/articles/996adfac0d58fb

pin "application", preload: true
pin "vue", to: "vue--dist--vue.esm-browser.js.js" # @3.2.41

pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "vue/dist/vue.esm-browser.js", to: "vue--dist--vue.esm-browser.js.js" # @3.3.4

# controllersよりさらに下のフォルダにあっても問題ない
# home#indexのviewに対して何で以下のjsがマッピングされるのか理屈が分からん
# パッケージ名とファイル名の下部は同一じゃないとダメ?
# とりあえずcontrollersディレクトリ配下のxxx_controllerという規約でvueのお試し...
pin_all_from "app/javascript/controllers", under: "controllers"
