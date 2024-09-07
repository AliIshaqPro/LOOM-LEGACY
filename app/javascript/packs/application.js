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


Rails.start();
