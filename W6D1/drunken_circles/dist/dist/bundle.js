!function(t){var e={};function n(r){if(e[r])return e[r].exports;var o=e[r]={i:r,l:!1,exports:{}};return t[r].call(o.exports,o,o.exports,n),o.l=!0,o.exports}n.m=t,n.c=e,n.d=function(t,e,r){n.o(t,e)||Object.defineProperty(t,e,{configurable:!1,enumerable:!0,get:r})},n.r=function(t){Object.defineProperty(t,"__esModule",{value:!0})},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="",n(n.s=2)}([function(t,e){const n=function(t,e,n,r){this.centerX=t,this.centerY=e,this.radius=n,this.color=r};n.randomCircle=function(t,e,r){return new n(t*Math.random(),e*Math.random(),n.radius(t,e,r),n.randomColor())};n.randomColor=function(){let t="#";for(let e=0;e<6;e++)t+="0123456789ABCDEF"[Math.floor(16*Math.random())];return t},n.radius=function(t,e,n){let r=t*e/n;return 2*Math.sqrt(r/Math.PI)},n.prototype.moveRandom=function(t,e){let n=2*Math.random()-1,r=2*Math.random()-1;this.centerX=Math.abs((this.centerX+n*this.radius*.1)%t),this.centerY=Math.abs((this.centerY+r*this.radius*.1)%e)},n.prototype.render=function(t){t.fillStyle=this.color,t.beginPath(),t.arc(this.centerX,this.centerY,this.radius,0,2*Math.PI,!1),t.fill()},t.exports=n},function(t,e,n){const r=n(0),o=[];window.Game=function(t,e){this.xDim=t,this.yDim=e;for(let n=0;n<Game.NUM_CIRCLES;++n)o.push(r.randomCircle(t,e,Game.NUM_CIRCLES))},Game.NUM_CIRCLES=4e3,Game.prototype.render=function(t){t.clearRect(0,0,this.xDim,this.yDim),o.forEach(function(e){e.render(t)})},Game.prototype.moveCircles=function(){o.forEach(t=>{t.moveRandom(this.xDim,this.yDim)})},Game.prototype.start=function(t){const e=t.getContext("2d"),n=()=>{this.moveCircles(),this.render(e),requestAnimationFrame(n)};n()},t.exports=Game},function(t,e,n){const r=n(1),o=document.getElementsByTagName("canvas")[0];o.height=window.innerHeight,o.width=window.innerWidth,new r(o.width,o.height).start(o)}]);