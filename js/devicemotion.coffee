$ ->
  console.log "loaded"
  count = 0
  shake = 0
  dom = "hoge"
  accDiff = 0
  addFlg = true

  acc: 
    x:0
    y:0
    z:0
  dir:
    x:0
    y:0
    z:0
  pacc:
    x:0
    y:0
    z:0
  pdir:
    x:0
    y:0
    z:0

  $(window).bind "devicemotion", (event)->
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
    
    acc = event.originalEvent.acceleration
    dir = event.originalEvent.accelerationIncludingGravity
    
    if (Math.abs(acc.x) > 3.0 ) and addFlg
      shake += 1
      addFlg = false
    else if (Math.abs(acc.x) < 3.0) and !addFlg
      addFlg = true

    $("#sensor").empty().append("here")
    dom = """
    hello<br>
    acc:x:#{acc.x}<br>
    acc:y:#{acc.y}<br>
    acc:z:#{acc.z}<br>
    dir:x:#{dir.x}<br>
    dir:y:#{dir.y}<br>
    dir:z:#{dir.z}<br>
    count:#{count}<br>
    shake:#{shake}<br>
    """
    $("#sensor").empty().append(dom)

    pacc = acc
    pdir = dir
    count += 1



