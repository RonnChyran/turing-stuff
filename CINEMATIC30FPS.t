%for intended effect
%http://static4.gamespot.com/uploads/ignore_jpg_scale_super/1544/15443861/2732023-289650_screenshots_2014-11-11_00006.jpg
%download and save as ubisoft.JPG
%press the forgot skin dlc? button

import GUI
setscreen("graphics:800;700,nobuttonbar")

proc trippy1
    cls
    loop
    for i: 1..100
    drawfilloval(Rand.Int(0, maxx), Rand.Int(0, maxy), 3, 3, Rand.Int(1, maxcolor))
    end for
    GUI.Refresh
    exit when GUI.ProcessEvent
    end loop
end trippy1

proc trippy2
    cls
    loop
    drawfillbox(0, 0, maxx, maxy, Rand.Int(1, maxcolor))
    GUI.Refresh
    exit when GUI.ProcessEvent

    end loop
end trippy2

proc trippy3
    cls
    loop
    for i: 1..100
    var x : int := Rand.Int(0, maxx)
    var y : int := Rand.Int(0, maxy)
    var z : int := Rand.Int(0, 1)
    case z of 
    label 0:     drawfillmapleleaf(x, y, x+30, y+30, red)
    label 1:     drawfillmapleleaf(x, y, x+30, y+30, white)
    end case
    end for
    GUI.Refresh
    exit when GUI.ProcessEvent

    end loop
end trippy3

proc trippy4
    cls
    loop
    for i: 1..100
    var x : int := Rand.Int(0, maxx)
    var y : int := Rand.Int(0, maxy)
    var z : int := Rand.Int(0, 2)
    case z of 
    label 0: drawfillstar(x, y, x+30, y+30, red)
    label 1: drawfillstar(x, y, x+30, y+30, blue)
    label 2: drawfillstar(x, y, x+30, y+30, white)
    end case
    end for
    GUI.Refresh
    exit when GUI.ProcessEvent
    end loop
end trippy4

proc skindlc
    var pic : int := Pic.FileNew("ubisoft.JPG")
    var font1 := Font.New ("sansserif:24:bold")

    loop
            Pic.Draw (pic, 0, 0, picCopy)
            Font.Draw ("UBISOFT", Rand.Int(0, maxx), Rand.Int(0, maxy), font1, blue)
            Font.Draw ("CINEMATIC 30FPS", Rand.Int(0, maxx), Rand.Int(0, maxy), font1, red)
            Font.Draw ("ASSASINS CREED UNITY", Rand.Int(0, maxx), Rand.Int(0, maxy), font1, white)

                exit when GUI.ProcessEvent
    GUI.Refresh

    end loop
end skindlc

var draw : int := GUI.CreateButtonFull (50, 10, 0, "lsd",
            trippy1, 0, '^D', true)
            
var draw2 : int := GUI.CreateButtonFull (200, 10, 0, "epilepsy",
            trippy2, 0, '^D', true)
            
var draw3 : int := GUI.CreateButtonFull (350, 10, 0, "canadian lsd",
            trippy3, 0, '^D', true)

            var draw4 : int := GUI.CreateButtonFull (500, 10, 0, "murican lsd",
            trippy4, 0, '^D', true)

var draw5 : int := GUI.CreateButtonFull (600, 10, 0, "forgot skin dlc?",
            skindlc, 0, '^D', true)

loop
            exit when GUI.ProcessEvent
end loop
