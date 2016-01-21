-- TutorialMainGameWrongScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Jan - 2015
-- Created for: ICS2O
-- This is the scene that tells the user they got the question wrong with tutorial

TutorialMainGameWrongScene = class()

local startTime

function TutorialMainGameWrongScene:init()
    
    startTime = ElapsedTime
    
    if noVoiceOver then
        return
    else
        speech.rate = 0.1
        speech.volume = 0.6
        speech.pitch = 1.0
        speech.preDelay = 4.0
        speech.language = "en-US"
        speech.say("Tutorial over. Enjoy the game!")
    end
end

function TutorialMainGameWrongScene:draw()
  
    sprite("Dropbox:backgroundsForMainGameDots", WIDTH/2, HEIGHT/2, 1024, 768)
    
    -- Changes colour, font, size of text
    -- this text indicates to the user that they are incorrect and don't get candy 
    --it also shows them the correct answer          
    fill(198, 28, 25, 255)       
    font("Futura-CondensedExtraBold")
    fontSize(80) 
    
    text("You got it Incorrect...",WIDTH/2, 700)
    text("The Correct Answer was:",WIDTH/2,600)
    text("No Candy for you!", WIDTH/2, 100)
    
    fill(24, 164, 24, 255)
    text("2 + 2 = 4 ", WIDTH/2,500)
    
    if(startTime + 5 < ElapsedTime) then
        Scene.Change("tutorialover")
    end
end

function TutorialMainGameWrongScene:touched(touch)
    -- Codea does not automatically call this method
end
