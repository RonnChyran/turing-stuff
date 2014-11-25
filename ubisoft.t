
unit 
module assasinscreedunity
    export skindlc
    /*DO NOT CHANGE EXTREMELY IMPORTANT WILL BREAK EVERTHING IF YOU CHANGE*/
    proc skindlc(strMsg1: string, strMsg2: string, strMsg3: string, fontStr: string, color1: int, color2: int, color3: int)
      var pic : int := Pic.FileNew("ubisoft.JPG") /*MUST HAVE SKIN DLC TO RUN PROGRAMS*/
    var font1 := Font.New (fontStr)
    loop
            
            Pic.Draw (pic, 0, 0, picCopy)
            if color1 = -1 then 
            Font.Draw (strMsg1, Rand.Int(0, maxx), Rand.Int(0, maxy), font1, Rand.Int(0, maxcolor))
            else
            Font.Draw (strMsg1, Rand.Int(0, maxx), Rand.Int(0, maxy), font1, color1)
            end if
            if color2 = -1 then 
            Font.Draw (strMsg2, Rand.Int(0, maxx), Rand.Int(0, maxy), font1, Rand.Int(0, maxcolor))
            else
            Font.Draw (strMsg2, Rand.Int(0, maxx), Rand.Int(0, maxy), font1, color2)
            end if
            if color3 = -1 then 
            Font.Draw (strMsg3, Rand.Int(0, maxx), Rand.Int(0, maxy), font1, Rand.Int(0, maxcolor))
            else
            Font.Draw (strMsg3, Rand.Int(0, maxx), Rand.Int(0, maxy), font1, color3)
            end if
           
    end loop
    end skindlc
end assasinscreedunity
