// Generated by CoffeeScript 1.6.3
$(function() {
  console.log("loaded");
  return $(window).bind("devicemotion", function(event) {
    var dom;
    console.log(event);
    dom = "acc:x:" + event.acceleration.x + "\nacc:y:" + event.acceleration.y + "\nacc:z:" + event.acceleration.z + "\n";
    return $("#sensor").empty().append(dom);
  });
});
