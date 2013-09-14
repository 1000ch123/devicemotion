$ ->
  console.log "loaded"
  count = 0
  dom = "hoge"

  x = 0
  y = 0
  acc: 
    x:0
    y:0
    z:0
  dir:
    x:0
    y:0
    z:0
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

    ax = event.originalEvent.accelerationIncludingGravity.x
    ay = event.originalEvent.accelerationIncludingGravity.y
    az = event.originalEvent.accelerationIncludingGravity.z
    
    

    $("#sensor").empty().append("here")
    dom = """
    hello<br>
    object:#{event.originalEvent.acceleration}<br>
    acc:x:#{x}<br>
    acc:y:#{y}<br>
    acc:z:#{z}<br>
    dir:x:#{ax}<br>
    dir:y:#{ay}<br>
    dir:z:#{az}<br>
    count:#{count}<br>
    """
    $("#sensor").empty().append(dom)


