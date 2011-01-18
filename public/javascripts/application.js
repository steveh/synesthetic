$(function () {
  var eventName = "dimensionsChanged";

  $("#dimensions").delegate("input", "change", function () {
    $(this).trigger(eventName);
  }).bind(eventName, function () {
    var width = parseInt($(this).find("#dimension_width").val()),
       height = parseInt($(this).find("#dimension_height").val()),
          top = parseInt($(this).find("#dimension_top").val()),
         left = parseInt($(this).find("#dimension_left").val()),
       bottom = parseInt($(this).find("#dimension_bottom").val()),
        right = parseInt($(this).find("#dimension_right").val());

    $("#text span").css({
      width: "" + width + "px",
      height: "" + height + "px",
      margin: "" + top + "px " + "" + left + "px " + "" + bottom + "px " + "" + right + "px"
    });
  }).trigger(eventName);

  $("#letters .container").each(function (index, container) {
    var input = $(container).find("input");

    var cwcontainer = $(container).find(".colorwheel");

    var cw = Raphael.colorwheel(cwcontainer[0], 100).input(input[0]);
});
});