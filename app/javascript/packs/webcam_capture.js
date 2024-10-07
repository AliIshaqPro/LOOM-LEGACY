document.addEventListener('DOMContentLoaded', function() {
    // Initialize webcam
    Webcam.set({
      width: 320,
      height: 240,
      image_format: 'png',
      jpeg_quality: 90
    });
    Webcam.attach('#webcam');
  
    document.getElementById('capture-btn').addEventListener('click', function() {
      Webcam.snap(function(data_uri) {
        // Create a Blob from the data_uri
        fetch(data_uri)
          .then(res => res.blob())
          .then(blob => {
            // Create a FormData object and append the Blob
            let formData = new FormData();
            formData.append('ceo[photo]', blob, 'photo.png');
  
            // Send the FormData via AJAX
            fetch('/ceos', {
              method: 'POST',
              body: formData
            })
            .then(response => response.json())
            .then(data => {
              // Handle success
            })
            .catch(error => {
              // Handle error
            });
          });
      });
    });
  });
  