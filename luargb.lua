local font = draw.CreateFont("tf2 build", 15, 300, FONTFLAG_OUTLINE)
local current_fps = 0

local function watermark()
  draw.SetFont(font)
  draw.Color(255, 255, 255, 255)


  if globals.FrameCount() % 100 == 0 then
    current_fps = math.floor(1 / globals.FrameTime())
    server_tick = math.floor(1 / globals.TickInterval())

  end

function RGBRainbow(frequency)
  local curtime = globals.CurTime() 
  local r,g,b
  r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
  g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
  b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

  return r, g, b
end

--Credit: https://github.com/DemonLoverHvH for the rgb code

local InGame = clientstate.GetClientSignonState()
    local me = entities.GetLocalPlayer()  


  if InGame == 6 then
        ping = entities.GetPlayerResources():GetPropDataTableInt("m_iPing")[me:GetIndex()] 
    else
        ping = "0"
    end


   local r, g, b = RGBRainbow(0.9)
    draw.Color( 46, 218, 46, 150 )
    draw.Color( 35, 219, 229, 150 )
    draw.Color( 226, 0, 255, 150 )
    draw.Color( 255, 0, 0, 1 )
    draw.Color( r, g, b, 255 )
    

printc(255, 113, 87, 155, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
printc(250, 0, 132, 155, "Thanks for using my random lua script")
printc(255, 113, 87, 155, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
printc(255, 38, 0, 155, "This script is created by: 2123320x00123542 AK me")


    draw.Text( 1840, 5, "User info: ")
    draw.Text( 1844, 22, "| FPS: " .. current_fps )
    draw.Text( 1835, 38, "| Ticks: " .. server_tick )
    draw.Text( 5, 5, "| BUILD: " .. os.date("%B, %A, %Y. ") )
    draw.Text( 5, 25, "| Currently Time: " .. os.date("%I:%M %p.") )
    draw.Text( 1843, 54, "| PING: " .. tostring(ping) )
  
end

callbacks.Register("Draw", "draw", watermark)