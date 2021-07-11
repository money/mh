require("@rails/activestorage").start()
require("channels")
require("trix")
import * as bootstrap from "bootstrap"
import "@popperjs/core"
import "@hotwired/turbo-rails"
// import "controllers"
require("controllers")

document.addEventListener("trix-file-accept", function(event) {
  event.preventDefault()
})

document.addEventListener("turbo:load", function() {
})
