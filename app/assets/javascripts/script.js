
var wavesurfer = Object.create(WaveSurfer);


$(document).ready(function(){

  wavesurfer.init({
      container: document.querySelector('.sound'),
      waveColor: 'black',
      progressColor: '#4484CE'
  });


});
