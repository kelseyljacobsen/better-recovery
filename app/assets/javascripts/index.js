// RED CIRCLE DIVS FOR BODY. ALSO CHANGES HTML 'BODY PART' DISPLAY ON PAGE

$(document).ready(function() {

 $('#body-part').html('Click on a body part to view the surgeons');

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

// FADES FLASH MESSAGES AFTER 4 SECONDS
  $('div.fade-flash-messages').fadeOut(4000).removeClass('fade-flash-messages');

});



