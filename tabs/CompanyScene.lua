-- CompanyScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the first scene (company logo)

CompanyScene = class()

--global to this file
local startTime

function CompanyScene:init()

    --sprite("iOS Button Pack:Blue Level Menu Button")
    startTime = ElapsedTime
end

function CompanyScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:CompanyLogo", WIDTH/2, HEIGHT/2)
    
    print(ElapsedTime)
    print("End time is "..startTime + 3)
    if(startTime + 3 < ElapsedTime) then
        Scene.Change("logo")
        print("The end time is "..ElapsedTime)
    end
end

function CompanyScene:touched(touch)
    -- Codea does not automatically call this method
    
end