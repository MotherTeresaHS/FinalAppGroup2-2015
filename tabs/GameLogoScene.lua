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

    startTime2 = ElapsedTime
end

function GameLogoScene:draw()
    
    sprite("Dropbox:gameLogo", WIDTH/2, HEIGHT/2)
    
    if(startTime2 + 2 < ElapsedTime) then
        if(tutorialOver ~= 0) then
            Scene.Change("mainmenu")
        elseif(tutorialOver == 0) then
            Scene.Change("tutorialmainmenu")
        end
    end
end

function GameLogoScene:touched(touch)
    
end