// Import custom JavaScript files
import './webcam_capture';
import './index';

// Import Turbo and start it (only need this once)
import { Turbo } from "@hotwired/turbo-rails";
Turbo.start();

// Import Bootstrap (JavaScript and CSS)
import 'bootstrap/dist/js/bootstrap';
import 'bootstrap/dist/css/bootstrap';

// Import Rails components
import Rails from "@rails/ujs"; // Ensure Rails UJS is imported
Rails.start();

import "controllers"; // Stimulus controllers, if used
import "channels";    // WebSockets or ActionCable, if used
