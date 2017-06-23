// globally load the wavesurfer plugin
var wavesurfer = Object.create(WaveSurfer);

// when document is ready keep load the wavesurfer plugin
$(document).ready(function(){

  wavesurfer.init({
      container: document.querySelector('.sound'),
      waveColor: 'black',
      progressColor: '#4484CE'
  });

 // when hand is clicked do slap sound
var audio = new Audio("http://res.cloudinary.com/dsxf8cujo/video/upload/v1497938309/slap1_zvfjzc.wav") ;

$( ".hand" ).click(function() {
  audio.play();
});



});
