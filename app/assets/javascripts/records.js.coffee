# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

show_pet_forms = (pets_selected, pets_allowed) ->
  i = 1

  while i <= pets_selected
    element_id = "pet-" + i
    document.getElementById(element_id).style.visibility = "visible"
    document.getElementById(element_id).style.display = "block"
    i++
  i = (parseInt(pets_selected) + 1)

  while i <= pets_allowed
    element_id = "pet-" + i
    document.getElementById(element_id).style.visibility = "hidden"
    document.getElementById(element_id).style.display = "none"
    i++
