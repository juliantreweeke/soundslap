
var wavesurfer = Object.create(WaveSurfer);


$(document).ready(function(){

  wavesurfer.init({
      container: document.querySelector('.sound'),
      waveColor: 'red',
      progressColor: 'blue'
  });

  //
  // wavesurfer.on('ready', function () {
  //     wavesurfer.play();
  // });
  //
  // wavesurfer.load('http://res.cloudinary.com/dce33w3mj/video/upload/v1497830852/Space_Gun_14_hptigq.wav');

});
