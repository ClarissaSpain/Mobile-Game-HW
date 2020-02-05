-----------------------------------------------------------------------------------------
--
-- main.lua
-- Author: Claire Spain
-- Updated: 2/4/2020
-- Purpose: HW2 Mobile Game Design
--
-----------------------------------------------------------------------------------------
--Assignment
-- In this assignment, you are to create your first Corona SDK project. You are going to develop
-- randomized objects (images or shapes) that fall from the sky. As they fall, change the size of the
-- object.
-- Specifics:
-- 1. Create an animation with falling shapes or images or both @
-- 2. Use arrays
-- 3. Destroy objects after they fall off the screen
-- 4. No collisions @
-- 5. Change the size of the object as it falls @
-- 6. Create a timer event listener @
-- 7. Use if statements@
-- 8. Read shape or image properties from a file @
-- 9. Create at least ten items that fall at any given time @
-- Optional
-- 1. Rotate your shapes or images as they fall ...

-----------------------------------------------------------------------------------------
-- local gameLoopTimer
-- local speed = 25
local soccerballW=100
local soccerballH=100

print("logging")
local background = display.newImageRect("background.jpg", display.viewableContentWidth, display.viewableContentHeight)
background.x = display.contentCenterX
background.y = display.contentCenterY
--
local function generateRandomThings()

local soccerball = display.newImageRect("soccerball.png", soccerballW, soccerballH)
soccerball.x = math.random( 0, display.viewableContentWidth ) -- This will make the x-position random
soccerball.y = -100 --For testing purposes
soccerball.alpha = 0.8
soccerball.rotation = math.random(1,360)
soccerballW = math.random(50, 100)
soccerballH = math.random(50, 100)
-- local physics = require "physics"
-- physics.start()
-- physics.addBody(soccerball, {bounce = .8})

--to transition soccerball y
transition.to( soccerball, {time=5000, y=display.contentHeight+ 200})
--to gradually scale soccerball
transition.to( soccerball, {time=5000, xScale=2, yScale=2} )
--rotation
-- while (soccerball.y) do
-- soccerball.rotation = soccerball.rotation + 10
-- end
-- transition.to(soccerball, {time=5000, soccerball.rotation + 10})
-- To destroy function
if  soccerball.y > display.contentHeight then

      soccerball:removeSelf()
      soccerball = nil
      print("delete things")
end
end

timer.performWithDelay(200,generateRandomThings,0) --timer event listener





-- Shape = {area = 0}
--
-- function Shape:new (o,side)
--    o = o or {}
--    setmetatable(o, self)
--    self.__index = self
--    side = side or 0
--    self.area = side*side;
--    return o
-- end
--
-- function Shape:printArea ()
--    print("The area is ",self.area)
-- end
--
-- -- Creating an object
-- myshape = Shape:new(nil,10)
--
-- myshape:printArea()
--
-- Set background/automatically resize background to device display
-- local soccerball = display.newImageRect("soccerball.png", soccerballH,soccerballW)
-- soccerball.x = display.contentCenterX
-- soccerball.y = display.contentCenterY
-- soccerball.fill.blendMode = "multiply"
-- --local w= soccerball:get_width()
-- --local h = soccerball:get_height()
--
--
-- local function gameLoop()
--
--    soccerball.y = soccerball.y + speed
--
--    soccerball.scale = soccerball.scale - 1
--    --soccerball:get_height() = soccerball:get_height() - 10
--    if(soccerball.y > display.contentHeight) then
--       soccerball.x = math.random(20,300)
--       soccerball.y=0
--       --soccerballH=100
--       --soccerballW=100
--    end
-- end
--
-- gameLoopTimer = timer.performWithDelay( 100, gameLoop, 0 )

--function to drop object build
-- local function createObject()
--
--  local img = display.newImageRect( 'soccerball.png', 100, 100 )
--  displayGroup:insert( img )
--
--  img.y = -img.contentHeight -- This will make sure it is off-screen on TOP
--  img.x = math.random( 0, display.viewableContentWidth ) -- This will make the x-position random
--
--  img.y =+ 10
--
--  -- transition.to( img, { time = 5000, y = display.viewableContentHeight + img.contentHeight }
--
--
-- end
--
-- --Actual function do
-- local function dropObjects()
-- --delete object after its gone...
--  timer.performWithDelay( 1000, createObject, 0 )   -- make this loop indif.
-- end



-- local function generateRandomThings()
--
-- -- First call a this function
-- -- local circle = display.newImage "soccerball.png"
--
--  local img = display.newImageRect( 'soccerball.png', 100, 100 )
--  -- displayGroup:insert( img )
--
-- -- local image.scale('soccerball.png', 50, 50, center)
-- -- physics.addBody(circle)
--
-- -- The two lines of code above is displaying and add physics to your object.
--
-- -- Below gives the random positions of the object (You can change it)
-- img.x = math.random(100, 200)
-- img.y = -100
--
--
-- img.rotation = math.random(1,360)
-- img.alpha = 0.8
-- end
--
-- --[[ The below code calls the function above, you can change
-- the time it's 200 at the moment. Then "generateRandomThings"
-- calls it. 0 is indicating the function to call itself non-stop,
-- you can change it to any amount you like.]]
--
-- timer.performWithDelay(200,generateRandomThings,0)
