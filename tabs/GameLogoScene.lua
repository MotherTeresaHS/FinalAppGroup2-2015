-- GameLogoScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the second scene (game logo)

GameLogoScene = class()

--global to this file
local startTime2

function GameLogoScene:init()

    --sprite("iOS Button Pack:Blue Level Menu Button")
    startTime2 = ElapsedTime
end

function GameLogoScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:GameLogo", WIDTH/2, HEIGHT/2)

    if(startTime2 + 3 < ElapsedTime) then
        Scene.Change("mainmenu")
    end
end

function GameLogoScene:touched(touch)
    -- Codea does not automatically call this method
end