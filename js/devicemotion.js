// Generated by CoffeeScript 1.6.3
$(function() {
  var count, dom, shake;
  console.log("loaded");
  count = 0;
  shake = 0;
  dom = "hoge";
  ({
    acc: {
      x: 0,
      y: 0,
      z: 0
    },
    dir: {
      x: 0,
      y: 0,
      z: 0
    },
    pacc: {
      x: 0,
      y: 0,
      z: 0
    },
    pdir: {
      x: 0,
      y: 0,
      z: 0
    }
  });
  return $(window).bind("devicemotion", function(event) {
    var acc, dir, pacc, pdir;
    acc = event.originalEvent.acceleration;
    dir = event.originalEvent.accelerationIncludingGravity;
    /*
    if Math.abs(accDiff) > 0.1
      shake += 1
    */

    $("#sensor").empty().append("here");
    dom = "hello<br>\nacc:x:" + acc.x + "<br>\nacc:y:" + acc.y + "<br>\nacc:z:" + acc.z + "<br>\ndir:x:" + dir.x + "<br>\ndir:y:" + dir.y + "<br>\ndir:z:" + dir.z + "<br>\ncount:" + count + "<br>\nshake:" + shake + "<br>";
    $("#sensor").empty().append(dom);
    pacc = acc;
    pdir = dir;
    return count += 1;
  });
});
