# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

`show_pet_forms = function(pets_selected, pets_allowed) {
	
	for (var i=1;i<=pets_selected;i++)
	{ 
		element_id = "pet-" + i;
		document.getElementById(element_id).style.visibility = "visible";
	    document.getElementById(element_id).style.display = "block";
	}
	for (var i=(pets_selected+1);i<=pets_allowed;i++)
	{ 
		element_id = "pet-" + i;
		document.getElementById(element_id).style.visibility = "hidden";
	    document.getElementById(element_id).style.display = "none";
	}
};`
