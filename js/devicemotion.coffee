$ ->
  console.log "loaded"
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
    dom = """
    acc:x:#{event.acceleration.x}
    acc:y:#{event.acceleration.y}
    acc:z:#{event.acceleration.z}

    """
    $("#sensor").empty().append(dom)
