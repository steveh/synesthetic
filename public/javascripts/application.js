$(function () {
  var eventName = "dimensionsChanged";

  $("#dimensions").delegate("input", "change", function () {
    $(this).trigger(eventName);
  }).bind(eventName, function () {
    var width = parseInt($(this).find("#width").val()),
       height = parseInt($(this).find("#height").val()),
          top = parseInt($(this).find("#top").val()),
         left = parseInt($(this).find("#left").val()),
       bottom = parseInt($(this).find("#bottom").val()),
        right = parseInt($(this).find("#right").val());

    $("#text span").css({
      width: "" + width + "px",
      height: "" + height + "px",
      margin: "" + top + "px " + "" + left + "px " + "" + bottom + "px " + "" + right + "px"
    });
  }).trigger(eventName);
});