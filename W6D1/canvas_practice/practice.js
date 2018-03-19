document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas');
  canvas.height = 500;
  canvas.width = 500;
  const ctx = canvas.getContext('2d');

  ctx.fillStyle = 'green';
  ctx.fillRect(15, 15, 400, 250);

  ctx.beginPath();
  ctx.arc(100, 100, 40, 0, 2 * Math.PI);
  ctx.strokeStyle = 'pink';
  ctx.lineWidth = 20;
  ctx.stroke();

  ctx.fillStyle = 'blue';
  ctx.fill();
});
