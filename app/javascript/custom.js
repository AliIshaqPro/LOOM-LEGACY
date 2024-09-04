// custom.js

document.addEventListener('turbolinks:load', function() {
    const form = document.getElementById('new_message_form');
    const messageBody = document.getElementById('message_body');
  
    if (form && messageBody) {
      // Clear the text area and focus it after the form submission
      form.addEventListener('submit', function() {
        setTimeout(() => {
          messageBody.value = ''; // Clear the text area
          messageBody.focus(); // Ensure the text area remains focused
        }, 0); // Delay to ensure the form submission completes first
      });
  
      // Handle the Enter key press in the text area
      messageBody.addEventListener('keydown', function(event) {
        if (event.key === 'Enter' && !event.shiftKey) {
          event.preventDefault(); // Prevents the default action (e.g., adding a new line)
          form.requestSubmit(); // Programmatically submits the form
        }
      });
    }
  
    const dropdownToggle = document.getElementById('dropdownToggle');
    const dropdownMenu = document.getElementById('dropdownMenu');
  
    if (dropdownToggle && dropdownMenu) {
      dropdownToggle.addEventListener('click', function(event) {
        event.stopPropagation(); // Prevent click event from closing the dropdown immediately
        const isVisible = dropdownMenu.style.display === 'block';
        dropdownMenu.style.display = isVisible ? 'none' : 'block';
        adjustDropdownPosition();
      });
  
      document.addEventListener('click', function(event) {
        if (!dropdownToggle.contains(event.target) && !dropdownMenu.contains(event.target)) {
          dropdownMenu.style.display = 'none';
        }
      });
  
      function adjustDropdownPosition() {
        const rect = dropdownMenu.getBoundingClientRect();
        const isOverflowingLeft = rect.left < 0;
        const isOverflowingRight = rect.right > window.innerWidth;
  
        if (isOverflowingLeft) {
          dropdownMenu.style.left = '0'; // Reset position to keep it within screen
          dropdownMenu.style.right = '0'; // Align to the right edge of the dropdown container
        } else if (isOverflowingRight) {
          dropdownMenu.style.left = 'auto';
          dropdownMenu.style.right = '0'; // Ensure it stays within the right edge of the viewport
        } else {
          dropdownMenu.style.left = '0'; // Default positioning
          dropdownMenu.style.right = 'auto';
        }
      }
    }
  
    // Camera control
    window.openCamera = function() {
      navigator.mediaDevices.getUserMedia({ video: true })
        .then(function(stream) {
          const video = document.getElementById('camera-stream');
          const closeButton = document.getElementById('close-btn');
          video.style.display = 'block'; // Show the video element
          closeButton.style.display = 'block'; // Show the close button
          video.srcObject = stream; // Display the camera stream
        })
        .catch(function(err) {
          console.error("Error: " + err);
        });
    }
  
    window.closeCamera = function() {
      const video = document.getElementById('camera-stream');
      const closeButton = document.getElementById('close-btn');
      const stream = video.srcObject;
      if (stream) {
        const tracks = stream.getTracks();
        tracks.forEach(track => track.stop());
        video.srcObject = null;
        video.style.display = 'none'; // Hide the video element
        closeButton.style.display = 'none'; // Hide the close button
      }
    }
  });
  