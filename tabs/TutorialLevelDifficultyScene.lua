-- TutorialLevelDifficultyScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the level difficulty selector scene with the tutorial

TutorialLevelDifficultyScene = class()

local homeButton
local easyLevelDifficultyButton
local mediumLevelDifficultyButton
local hardLevelDifficultyButton
local backgroundTextBox

function TutorialLevelDifficultyScene:init()
    -- you can accept and set parameters here
    
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-400, HEIGHT/2+325))
    easyLevelDifficultyButton = Button("Dropbox:levelDifficultyEasyButton", vec2(WIDTH/2-190, HEIGHT/2))
    mediumLevelDifficultyButton = Button("Dropbox:levelDifficultyMediumButton", vec2(WIDTH/2-20, HEIGHT/2))
    hardLevelDifficultyButton = Button("Dropbox:levelDifficultyHardButton", vec2(WIDTH/2+180,HEIGHT/2))
    backgroundTextBox = SpriteObject("Dropbox:tutorialBackgroundRectangleForTextLevels", vec2(WIDTH/2-370, HEIGHT/2))
    
    homeButton.draggable = false
    easyLevelDifficultyButton.draggable = false
    mediumLevelDifficultyButton.draggable = false
    hardLevelDifficultyButton.draggable = false
end

function TutorialLevelDifficultyScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:levelDifficultyScene", WIDTH/2, HEIGHT/2)
    
    fill(0, 0, 0, 255)
    fontSize(60)
    text("Level Difficulty Selector", WIDTH/2, HEIGHT/2+330)
    
    homeButton:draw()
    easyLevelDifficultyButton:draw()
    mediumLevelDifficultyButton:draw()
    hardLevelDifficultyButton:draw()
    backgroundTextBox:draw()
    
    fill(0, 0, 0, 255)
    
    fontSize(24)
    text("Select the easy difficulty->", WIDTH/2-370, HEIGHT/2)
end

function TutorialLevelDifficultyScene:touched(touch)
    -- Codea does not automatically call this method
    
    easyLevelDifficultyButton:touched(touch)
    
    if(easyLevelDifficultyButton.selected == true) then
        Scene.Change("tutorialmaingame")
        if noVoiceOver then
            return
        else
            speech.rate = 0.1
            speech.volume = 0.6
            speech.pitch = 1.0
            speech.preDelay = 0.5
            speech.language = "en-US"
            speech.say("Drag the equation to the green circle")
        end
    end
end