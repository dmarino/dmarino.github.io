//JS que maneja las barraas de progreso
   
    //carga SkillBars cuando se abre la pestaña.
    $("#skills-button").click(function(){
        jQuery('.skillbar').each(function(){
		    jQuery(this).find('.skillbar-bar').animate({
			    width:jQuery(this).attr('data-percent')
		    },1000);
	    });
    });