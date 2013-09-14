// Generated by CoffeeScript 1.6.3
$(function() {
  var count;
  console.log("loaded");
  count = 0;
  $(window).bind("devicemotion", function(event) {
    var ax, ay, az, dom, x, y, z;
    console.log(event);
    x = event.originalEvent.acceleration.x;
    y = event.originalEvent.acceleration.y;
    z = event.originalEvent.acceleration.z;
    ax = event.originalEvent.accelerationIncludingGravity.x;
    ay = event.originalEvent.accelerationIncludingGravity.y;
    az = event.originalEvent.accelerationIncludingGravity.z;
    return dom = "hello\nacc:x:" + x + "\nacc:y:" + y + "\nacc:z:" + z + "\ndir:x:" + ax + "\ndir:y:" + ay + "\ndir:z:" + az + "\ncount:" + count;
  });
  return $("#sensor").empty().append(dom);
});
