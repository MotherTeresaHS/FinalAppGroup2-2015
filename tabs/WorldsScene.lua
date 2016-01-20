-- WorldsScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the worlds selector scene 

WorldsScene = class()

local homeButton
local additionWorldButton
local subtractionWorldButton
local multiplicationWorldButton
local divisionWorldButton
local sugarMountainWorldButton
-- French --
local subtractionWorldFrenchButton
local sugarMountainWorldFrenchButton

function WorldsScene:init()
    
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-400, HEIGHT/2+325))
    additionWorldButton = Button("Dropbox:additionWorldSelect", vec2(WIDTH/2-325, HEIGHT/2+150))
    subtractionWorldButton = Button("Dropbox:subtractionWorldSelect", vec2(WIDTH/2+325, HEIGHT/2+150))
    multiplicationWorldButton = Button("Dropbox:multiplicationWorldSelect", vec2(WIDTH/2-325, HEIGHT/2-230))
    divisionWorldButton = Button("Dropbox:divisionWorldSelect", vec2(WIDTH/2+325, HEIGHT/2-230))
    sugarMountainWorldButton = Button("Dropbox:sugarMountainWorldSelect", vec2(WIDTH/2, HEIGHT/2))
    -- French --
    subtractionWorldFrenchButton = Button("Dropbox:subtractionWorldSelectFrench", vec2(WIDTH/2+325, HEIGHT/2+150))
    sugarMountainWorldFrenchButton = Button("Dropbox:sugarMountainWorldSelectFrench", vec2(WIDTH/2, HEIGHT/2))
    
    homeButton.draggable = false
    additionWorldButton.draggable = false
    subtractionWorldButton.draggable = false
    multiplicationWorldButton.draggable = false 
    divisionWorldButton.draggable = false 
    sugarMountainWorldButton.draggable = false
    -- French --
    subtractionWorldFrenchButton.draggable = false
    sugarMountainWorldFrenchButton.draggable = false 
    
    noTutorialQuestion = false
    noWelcomeMessage = true
end

function WorldsScene:draw()
    
    sprite("Dropbox:levelSelectBackground", WIDTH/2, HEIGHT/2)
    
    homeButton:draw()
    additionWorldButton:draw()
    multiplicationWorldButton:draw()
    divisionWorldButton:draw()
    
    fill(0, 0, 0, 255)
    fontSize(60)
    if(languageForVoiceOver == 1) then
        subtractionWorldButton:draw()
        sugarMountainWorldButton:draw()
        text("Worlds", WIDTH/2, HEIGHT/2+300)
    elseif(languageForVoiceOver == 2) then
        subtractionWorldFrenchButton:draw()
        sugarMountainWorldFrenchButton:draw()
        text("Mondes", WIDTH/2, HEIGHT/2+300)
    end
end

function WorldsScene:touched(touch)
    -- Codea does not automatically call this method
    
    homeButton:touched(touch)
    additionWorldButton:touched(touch)
    subtractionWorldButton:touched(touch)
    multiplicationWorldButton:touched(touch)
    divisionWorldButton:touched(touch)
    sugarMountainWorldButton:touched(touch)
    -- French --
    subtractionWorldFrenchButton:touched(touch)
    sugarMountainWorldFrenchButton:touched(touch)
    
    if(homeButton.selected == true) then
        if noSoundEffects then
            Scene.Change("mainmenu")
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("mainmenu")
        end
    end

    if(additionWorldButton.selected == true) then
        if noSoundEffects then
            worldSelected = "+"
            Scene.Change("levels")
        else
            sound(SOUND_HIT, 1851, 0.50)
            worldSelected = "+"
            Scene.Change("levels")
        end
    elseif(subtractionWorldButton.selected == true) or (subtractionWorldFrenchButton.selected == true) then
        if noSoundEffects then
            worldSelected = "-"
            Scene.Change("levels")
        else
            sound(SOUND_HIT, 1851, 0.50)
            worldSelected = "-"
            Scene.Change("levels")
        end
    elseif(multiplicationWorldButton.selected == true) then
        if noSoundEffects then
            worldSelected = "*"
            Scene.Change("levels")
        else
            sound(SOUND_HIT, 1851, 0.50)
            worldSelected = "*"
            Scene.Change("levels")
        end
    elseif(divisionWorldButton.selected == true) then
        if noSoundEffects then
            worldSelected = "/"
            Scene.Change("levels")
        else
            sound(SOUND_HIT, 1851, 0.50)
            worldSelected = "/"
            Scene.Change("levels")
        end
    elseif(sugarMountainWorldButton.selected == true) or (sugarMountainWorldFrenchButton.selected == true) then
        if noSoundEffects then
            worldSelected = "?"
            Scene.Change("levels")
        else
            sound(SOUND_HIT, 1851, 0.50)
            worldSelected = "?"
            Scene.Change("levels")
        end
    end
end