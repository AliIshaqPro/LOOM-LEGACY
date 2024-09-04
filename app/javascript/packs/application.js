import './webcam_capture';
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "channels"
import { Turbo } from "@hotwired/turbo-rails";
Turbo.start();
import 'bootstrap';
import 'bootstrap/dist/js/bootstrap';
import 'bootstrap/dist/css/bootstrap';


// app/javascript/packs/application.js
// app/javascript/packs/application.js
import $ from 'jquery';
import Rails from '@rails/ujs';

Rails.start();
window.$ = $; // Ensure jQuery is globally available
window.jQuery = $; // Ensure jQuery is globally available
// app/assets/javascripts/application.js
//= require jquery
//= require jquery_ujs
//= require_tree .
import '../custom';
