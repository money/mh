// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap")
require("trix")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener("trix-file-accept", function(event) {
  event.preventDefault()
})

document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="popover"]').popover({
    template: '<div class="popover border-0 shadow bg-gradient-info" role="tooltip">' +
                '<div class="arrow"></div>' +
                '<div class="col align-self-center">' +
                  '<h3 class="popover-header text-center font-weight-normal text-white"></h3>' +
                  '<div class="popover-body h5 font-weight-light p-5 text-white"></div>' +
                '</div>' +
              '</div>'
  })
  $('[data-toggle="popover"]').on('click', function (event) {
    event.preventDefault()
  })
})
