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
  ctx.lineWidth = 10;
  ctx.fillStyle = 'blue';
  ctx.fill();
  ctx.stroke();

  // Diamond
  ctx.beginPath();
  ctx.moveTo(250, 50);
  ctx.lineTo(200, 150);
  ctx.lineTo(250, 250);
  ctx.lineTo(300, 150);
  ctx.lineTo(250, 50);
  ctx.strokeStyle = 'black';
  ctx.lineWidth = 2;
  ctx.fillStyle = 'red';
  ctx.fill();
  ctx.stroke();
});
