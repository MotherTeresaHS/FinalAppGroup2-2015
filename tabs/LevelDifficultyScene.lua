-- LevelDifficultyScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the level difficulty selector scene 

LevelDifficultyScene = class()

local homeButton
local easyLevelDifficultyButton
local mediumLevelDifficultyButton
local hardLevelDifficultyButton
-- French --
local easyLevelDifficultyFrenchButton
local mediumLevelDifficultyFrenchButton
local hardLevelDifficultyFrenchButton

function LevelDifficultyScene:init()
    -- you can accept and set parameters here
   
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-400, HEIGHT/2+325))
    easyLevelDifficultyButton = Button("Dropbox:levelDifficultyEasyButton", vec2(WIDTH/2-200, HEIGHT/2))
    mediumLevelDifficultyButton = Button("Dropbox:levelDifficultyMediumButton", vec2(WIDTH/2-20, HEIGHT/2))
    hardLevelDifficultyButton = Button("Dropbox:levelDifficultyHardButton", vec2(WIDTH/2+180,HEIGHT/2))
    -- French --
    easyLevelDifficultyFrenchButton = Button("Dropbox:levelDifficultyEasyButtonFrench", vec2(WIDTH/2-200, HEIGHT/2))
    mediumLevelDifficultyFrenchButton = Button("Dropbox:levelDifficultyMediumButtonFrench", vec2(WIDTH/2-20, HEIGHT/2))
    hardLevelDifficultyFrenchButton = Button("Dropbox:levelDifficultyHardButtonFrench", vec2(WIDTH/2+180,HEIGHT/2))
    
    homeButton.draggable = false
    easyLevelDifficultyButton.draggable = false
    mediumLevelDifficultyButton.draggable = false
    hardLevelDifficultyButton.draggable = false
    -- French --
    easyLevelDifficultyFrenchButton.draggable = false
    mediumLevelDifficultyFrenchButton.draggable = false
    hardLevelDifficultyFrenchButton.draggable = false
end

function LevelDifficultyScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:levelDifficultyScene", WIDTH/2, HEIGHT/2)
    
    fill(0, 0, 0, 255)
    
    homeButton:draw()
    
    fontSize(60)
    if(languageForVoiceOver == 1) then
        text("Level Difficulty Selector", WIDTH/2, HEIGHT/2+330)     
        easyLevelDifficultyButton:draw()
        mediumLevelDifficultyButton:draw()
        hardLevelDifficultyButton:draw()
    elseif(languageForVoiceOver == 2) then
        text("Niveau de Difficulté Sélecteur", WIDTH/2, HEIGHT/2+330)     
        easyLevelDifficultyFrenchButton:draw()
        mediumLevelDifficultyFrenchButton:draw()
        hardLevelDifficultyFrenchButton:draw()
    end
end

function LevelDifficultyScene:touched(touch)
    -- Codea does not automatically call this method
    
    homeButton:touched(touch)
    easyLevelDifficultyButton:touched(touch)
    mediumLevelDifficultyButton:touched(touch)
    hardLevelDifficultyButton:touched(touch)
    -- French --
    easyLevelDifficultyFrenchButton:touched(touch)
    mediumLevelDifficultyFrenchButton:touched(touch)
    hardLevelDifficultyFrenchButton:touched(touch)
    
    if(homeButton.selected == true) then
        if noSoundEffects then
            Scene.Change("mainmenu")
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("mainmenu")
        end
    elseif(easyLevelDifficultyButton.selected == true) or (easyLevelDifficultyFrenchButton.selected == true) then
        if noSoundEffects then
            levelDifficultySelected = "Easy"
            MainGameScene:changeCounter()
            Scene.Change("maingame")
        else
            sound(SOUND_HIT, 1851, 0.50)
            levelDifficultySelected = "Easy"
            MainGameScene:changeCounter()
            Scene.Change("maingame")
        end
    elseif(mediumLevelDifficultyButton.selected == true) or (mediumLevelDifficultyFrenchButton.selected == true) then
        if noSoundEffects then
            levelDifficultySelected = "Medium"
            MainGameScene:changeCounter()
            Scene.Change("maingame")
        else
            sound(SOUND_HIT, 1851, 0.50)
            levelDifficultySelected = "Medium"
            MainGameScene:changeCounter()
            Scene.Change("maingame")
        end
    elseif(hardLevelDifficultyButton.selected == true) or (hardLevelDifficultyFrenchButton.selected == true) then
        if noSoundEffects then
            levelDifficultySelected = "Hard"
            MainGameScene:changeCounter()
            Scene.Change("maingame")
        else
            sound(SOUND_HIT, 1851, 0.50)
            levelDifficultySelected = "Hard"
            MainGameScene:changeCounter()
            Scene.Change("maingame")
        end
    end
end