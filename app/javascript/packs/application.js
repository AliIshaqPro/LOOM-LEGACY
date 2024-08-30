import './webcam_capture';
// app/javascript/packs/application.js
// app/javascript/packs/application.js
import $ from 'jquery';
import Rails from '@rails/ujs';

Rails.start();
window.$ = $; // Ensure jQuery is globally available
window.jQuery = $; // Ensure jQuery is globally available
