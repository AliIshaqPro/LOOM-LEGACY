document.addEventListener('turbo:load', function() {
  // Create the scene, camera, and renderer
  const scene = new THREE.Scene();
  const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
  const renderer = new THREE.WebGLRenderer();
  
  // Add the renderer's canvas to the container
  renderer.setSize(window.innerWidth, window.innerHeight);
  document.getElementById('threejs-container').appendChild(renderer.domElement);
  
  // Create a geometry (sphere) and add it to the scene
  const geometry = new THREE.SphereGeometry(1, 32, 32); // radius, width segments, height segments
  const material = new THREE.MeshBasicMaterial({ color: 0x007bff, wireframe: true });
  const sphere = new THREE.Mesh(geometry, material);
  scene.add(sphere);
  
  camera.position.z = 2; // Set the camera position
  
  // Animate the sphere
  const animate = function () {
    requestAnimationFrame(animate);
  
    sphere.rotation.x += 0.01;
    sphere.rotation.y += 0.01;
  
    renderer.render(scene, camera);
  };
  
  animate(); // Start the animation loop
  
  // Adjust the scene when the window is resized
  window.addEventListener('resize', () => {
    const width = window.innerWidth;
    const height = window.innerHeight;
    renderer.setSize(width, height);
    camera.aspect = width / height;
    camera.updateProjectionMatrix();
  });
});
