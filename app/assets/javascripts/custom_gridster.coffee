$(document).ready ->
  $(".gridster ul").gridster({
#    widget_margins: [10, 10],
    widget_base_dimensions: [300, 300],
    widget_selector: "li",
    autogenerate_stylesheet: true,
    max_cols: 3,
  });
#  $(".gridster li").gridster({
##    widget_margins: [10, 10],
##    widget_base_dimensions: [340, 340]
#    autogenerate_stylesheet: true
#  });
#  $(".gridster li").click ->
#    $('.modal.image').modal()
#    alert('addMore click event');



