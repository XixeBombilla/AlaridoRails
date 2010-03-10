$(document).ready(function(){
    $('#boton_registro').click(function(){
	$("#registro").toggle();
	
    if($('#registro').is(':none')) {
      $('#registro').hide();
    } else {
      $('#registro').show();
    }
  });
});

$(document).ready(function(){
    $('#boton_donar').click(function(){
	$("#donativo").toggle();
	
    if($('#donativo').is(':none')) {
      $('#donativo').hide();
    } else {
      $('#donativo').show();
    }
  });
});

$(document).ready(function(){
    $('#boton_info').click(function(){
	$("#informacion").toggle();
	
    if($('#informacion').is(':none')) {
      $('#informacion').hide();
    } else {
      $('#informacion').show();
    }
  });
});