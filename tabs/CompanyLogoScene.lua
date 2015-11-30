-- CompanyLogoScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the first scene (company logo)

CompanyLogoScene = class()

--global to this file
local startTime

function CompanyLogoScene:init()

    --sprite("iOS Button Pack:Blue Level Menu Button")
    startTime = ElapsedTime
end

function CompanyLogoScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:CompanyLogo", WIDTH/2, HEIGHT/2)
    
    if(startTime + 1 < ElapsedTime) then
        Scene.Change("gamelogo")
    end
end

function CompanyLogoScene:touched(touch)
    -- Codea does not automatically call this method 
end