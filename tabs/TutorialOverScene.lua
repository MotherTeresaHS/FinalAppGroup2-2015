-- TutorialOverScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Jan - 2015
-- Created for: ICS2O
-- This is the scene that tells the user they are done with the tutorial 

TutorialOverScene = class()

local startTime

function TutorialOverScene:init()
    -- you can accept and set parameters here
    
    startTime = ElapsedTime
    tutorialOver = tutorialOver + 1
    saveLocalData("tutorial", tutorialOver)
    if(tutorialOver == 0) then
        if(gamecenter.enabled() == true) then
            --the achievement for completing the tutorial 
            gamecenter.submitAchievement("CompleteTutorialCandyQuations", 100)
        end
    end
end

function TutorialOverScene:draw()
    -- Codea does not automatically call this method
    
    --background(0, 0, 0, 255)
    sprite("Dropbox:tutorialOverSceneBackground", WIDTH/2, HEIGHT/2, 2048, 1536)
    
    fill(0, 0, 0, 255)
    font("Arial-BoldMT")
    fontSize(120)
    text("Tutorial Over", WIDTH/2, HEIGHT/2+150)
    text("Enjoy the game!", WIDTH/2, HEIGHT/2-150)
    
    if(startTime + 3 < ElapsedTime) then
        Scene.Change("companylogo")
    end
end

function TutorialOverScene:touched(touch)
    -- Codea does not automatically call this method
end