jQuery(document).ready(function () {  

	// Маска ввода номера телефона
	$('#person-phone').mask("+7 999 999 99 99", {placeholder: " " });

	//Прижать футер к низу
	if ( $(document).height() <= $(window).height() ) {
	  $(".footer").addClass("fixed-bottom");
	}

	// Плитки на главной. Если их 2 или 3 в последнем ряду, 
	// то прижать влево (space-between отображает плохо, если 2 или 3 плитки в последнем ряду)
	if ( ( $('.tile').length % 4 == 2) ) {
					var lastIdx = $('.tile').length - 1;					
					$('.tile').eq(lastIdx).addClass('tile-fix-space-between');
	}
	
	


});