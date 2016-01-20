-- TutorialWorldsScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the worlds selector scene with the tutorial

TutorialWorldsScene = class()

local homeButton
local additionWorldButton
local subtractionWorldButton
local multiplicationWorldButton
local divisionWorldButton
local sugarMountainWorldButton
local backgroundTextBox

function TutorialWorldsScene:init()
    
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-400, HEIGHT/2+325))
    additionWorldButton = Button("Dropbox:additionWorldSelect", vec2(WIDTH/2-325, HEIGHT/2+150))
    subtractionWorldButton = Button("Dropbox:subtractionWorldSelect", vec2(WIDTH/2+325, HEIGHT/2+150))
    multiplicationWorldButton = Button("Dropbox:multiplicationWorldSelect", vec2(WIDTH/2-325, HEIGHT/2-230))
    divisionWorldButton = Button("Dropbox:divisionWorldSelect", vec2(WIDTH/2+325, HEIGHT/2-230))
    sugarMountainWorldButton = Button("Dropbox:sugarMountainWorldSelect", vec2(WIDTH/2, HEIGHT/2))
    backgroundTextBox = SpriteObject("Dropbox:tutorialBackgroundRectangleForTextWorlds", vec2(WIDTH/2-70, HEIGHT/2+140))
    
    homeButton.draggable = false
    additionWorldButton.draggable = false
    subtractionWorldButton.draggable = false
    multiplicationWorldButton.draggable = false 
    divisionWorldButton.draggable = false 
    sugarMountainWorldButton.draggable = false
    backgroundTextBox.draggable = false
end

function TutorialWorldsScene:draw()
    
    sprite("Dropbox:levelSelectBackground", WIDTH/2, HEIGHT/2)
    
    homeButton:draw()
    additionWorldButton:draw()
    subtractionWorldButton:draw()
    multiplicationWorldButton:draw()
    divisionWorldButton:draw()
    sugarMountainWorldButton:draw()
    backgroundTextBox:draw()
    
    fill(0, 0, 0, 255)
    fontSize(60)
    text("Worlds", WIDTH/2, HEIGHT/2+300) 
    
    if(languageForVoiceOver == 1) then
        fontSize(24)
        text("<- Press the addition world", WIDTH/2-70, HEIGHT/2+140)
    elseif(languageForVoiceOver == 2) then
        fontSize(20)
        text("<-Appuyez sur l'addtion monde", WIDTH/2-70, HEIGHT/2+140)
    end
end

function TutorialWorldsScene:touched(touch)
    -- Codea does not automatically call this method    
    
    additionWorldButton:touched(touch)

    if(additionWorldButton.selected == true) then
        Scene.Change("tutoriallevels")
        if noVoiceOver then
            return
        else
            if(languageForVoiceOver == 1) then --english
                speech.rate = 0.1
                speech.volume = 0.6
                speech.pitch = 1.0
                speech.preDelay = 2.0
                speech.language = "en-US"
                speech.say("Select the easy difficulty")
            elseif(languageForVoiceOver == 2) then --french
                speech.rate = 0.1
                speech.volume = 0.6
                speech.pitch = 1.0
                speech.preDelay = 2.0
                speech.language = "fr-CA"
                speech.say("Sélectionnez le niveau de difficulté facile")
            end
        end
    end
end