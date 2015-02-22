$(document).ready(function() {

 $('#body-part').html('&nbsp;');

  $('#knee, #knee2, #knee3, #knee4').click(function() {
    $('*').removeClass('clicked-body-part');
    $(this).addClass('clicked-body-part');
    $('#body-part').html('Knee');
  });

  $('#ankle, #ankle2, #ankle3, #ankle4').click(function() {
    $('*').removeClass('clicked-body-part');
    $(this).addClass('clicked-body-part');
    $('#body-part').html('Ankle');
  });

  $('#foot, #foot2').click(function() {
    $('*').removeClass('clicked-body-part');
    $(this).addClass('clicked-body-part');
    $('#body-part').html('Foot');
  });

  $('#hand, #hand2, #hand3, #hand4').click(function() {
    $('*').removeClass('clicked-body-part');
    $(this).addClass('clicked-body-part');
    $('#body-part').html('Hand');
  });

  $('#elbow, #elbow2, #elbow3, #elbow4').click(function() {
    $('*').removeClass('clicked-body-part');
    $(this).addClass('clicked-body-part');
    $('#body-part').html('Elbow');
  });

  $('#wrist, #wrist2, #wrist3, #wrist4').click(function() {
    $('*').removeClass('clicked-body-part');
    $(this).addClass('clicked-body-part');
    $('#body-part').html('Wrist');
  });

  $('#shoulder, #shoulder2, #shoulder3, #shoulder4').click(function() {
    $('*').removeClass('clicked-body-part');
    $(this).addClass('clicked-body-part');
    $('#body-part').html('Shoulder');
  });

  $('#spine, #spine2, #spine3, #spine4, #spine5').click(function() {
    $('*').removeClass('clicked-body-part');
    $(this).addClass('clicked-body-part');
    $('#body-part').html('Back/Spine');
  });

  $('#hip, #hip2, #hip3, #hip4').click(function() {
    $('*').removeClass('clicked-body-part');
    $(this).addClass('clicked-body-part');
    $('#body-part').html('Hip');
  });

});