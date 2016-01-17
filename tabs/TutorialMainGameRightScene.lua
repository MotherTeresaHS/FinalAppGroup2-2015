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
        if(languageForVoiceOver == 1) then --english
            speech.rate = 0.1
            speech.volume = 0.6
            speech.pitch = 1.0
            speech.preDelay = 2.0
            speech.language = "en-US"
            speech.say("Now drag the equation to the red circle")
        elseif(languageForVoiceOver == 2) then --french
            speech.rate = 0.1
            speech.volume = 0.6
            speech.pitch = 1.0
            speech.preDelay = 2.0
            speech.language = "fr-CA"
            speech.say("Maintenant faites glisser l'équation dans le cercle rouge")
        end
    end
end

function TutorialMainGameRightScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:backgroundsForMainGameRainbow", WIDTH/2, HEIGHT/2, 1024, 768)
 
    -- Changes colour, font, size of text
    -- this text indicates to the user that they are correct and get candy         
    fill(39, 178, 24, 255)
    font("Futura-CondensedExtraBold")
    fontSize(100) 
    if(languageForVoiceOver == 1) then
        text("You got it Correct!", WIDTH/2, 600)
        text("Here is a candy", WIDTH/2, 100)
    elseif(languageForVoiceOver == 2) then
        fontSize(70)
        text("Vous avez obtenu elle correcte", WIDTH/2, 600)
        text("Voici un bonbon", WIDTH/2, 100)
    end
    sprite("Dropbox:candyForCurrency", WIDTH/2, HEIGHT/2)
    
    if(startTime + 3 < ElapsedTime) then
        Scene.Change("tutorialmaingame")
    end
end

function TutorialMainGameRightScene:touched(touch)
    -- Codea does not automatically call this method
end