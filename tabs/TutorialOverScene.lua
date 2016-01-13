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
    --gamecenter.submitAchievement(completeTutorial, 100)
end

function TutorialOverScene:draw()
    -- Codea does not automatically call this method
    
    --background(0, 0, 0, 255)
    sprite("Cargo Bot:Background Fade", WIDTH/2, HEIGHT/2, 2048, 1536)
    
    fill(255, 255, 255, 255)
    font("ArialRoundedMTBold")
    fontSize(70)
    text("Tutorial Over", WIDTH/2, HEIGHT/2+100)
    text("Enjoy the game!", WIDTH/2, HEIGHT/2-100)
    
    if(startTime + 2 < ElapsedTime) then
        Scene.Change("companylogo")
    end
end

function TutorialOverScene:touched(touch)
    -- Codea does not automatically call this method
end