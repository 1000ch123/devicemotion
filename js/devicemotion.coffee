$ ->
  console.log "loaded"
  count = 0
  $(window).bind "devicemotion", (event)->
    console.log event
    # devicemotionで何が取れるのか調査
    # acceleration:
    #   x
    #   y
    #   z
    # accelerationIncludingGravity:
    #   x
    #   y
    #   z
    # rotationRate
    #   alpha
    #   beta
    #   gamma
    x = event.originalEvent.acceleration.x
    y = event.originalEvent.acceleration.y
    z = event.originalEvent.acceleration.z

    ax = event.originalEvent.accelerationIncludingGravity.x;
    ay = event.originalEvent.accelerationIncludingGravity.y;
    az = event.originalEvent.accelerationIncludingGravity.z;
     
    dom = """
    hello
    acc:x:#{x}
    acc:y:#{y}
    acc:z:#{z}
    dir:x:#{ax}
    dir:y:#{ay}
    dir:z:#{az}
    count:#{count}
    """
   $("#sensor").empty().append(dom)
