-- TutorialMainGameRightScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the scene that tells the user they got the question right with tutorial

TutorialMainGameRightScene = class()

local startTime 

function TutorialMainGameRightScene:init()
    -- you can accept and set parameters here
    
    startTime = ElapsedTime
    tutorialSecondTime = true
    
    if noVoiceOver then
        return
    else
        speech.rate = 0.1
        speech.volume = 0.6
        speech.pitch = 1.0
        speech.preDelay = 1.0
        speech.language = "en-US"
        --speech.say("Now drag the equation to the red circle")
    end
end

function TutorialMainGameRightScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:mainGameRightBackground", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
 
    -- Changes colour, font, size of text
    -- this text indicates to the user that they are correct and get candy         
    fill(39, 178, 24, 255)
    font("Futura-CondensedExtraBold")
    fontSize(100)
    text("You got it Correct!", WIDTH/2, 600)
    text("Here is a candy", WIDTH/2, HEIGHT/2-284)
    sprite("Dropbox:candyForCurrency", WIDTH/2, HEIGHT/2)
    
    if(startTime + 3 < ElapsedTime) then
        Scene.Change("tutorialmaingame")
    end
end

function TutorialMainGameRightScene:touched(touch)
    -- Codea does not automatically call this method
end