// app/assets/javascripts/application.js
//= require jquery
//= require jquery_ujs
//= require_tree .


// Additional Sprockets-specific JavaScript
$(document).on('turbolinks:load', function() {
    $('#new_message_form').on('ajax:beforeSend', function() {
      console.log('Form submission via AJAX is being triggered.');
    });
  });
  